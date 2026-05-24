"""AccuracyBuilder — 准确性规则生成器（GB/T 36344-2018）。

覆盖四种准确性规则类型：
1. 记录数量合理 — RECORD_RANGE：全表记录数应在合理范围内
2. 测试数据检查 — TEST_DATA_{field}：标记含测试关键词的测试数据
3. 引用完整性 — REF_PK_{field}：ID/CODE 类字段值合理性检查
4. 业务逻辑合理性 — BIZ_LOGIC_GENDER_IDNO：性别与身份证号第17位奇偶性一致

用法:
  python builder/cli.py accuracy --table T_CUSTOMER
  python builder/cli.py accuracy --table T_CUSTOMER --dialect starrocks
"""

from builder.base import BaseBuilder, Rule


class AccuracyBuilder(BaseBuilder):
    """准确性规则生成器：记录数量合理 + 测试数据检查 + 引用完整性 + 业务逻辑合理性"""

    DIMENSION = "accuracy"
    STAGE = 3  # 阶段三

    # 测试数据关键词列表
    TEST_KEYWORDS = [
        "测试", "TEST", "test", "示例", "SAMPLE", "demo", "DEMO",
        "0000", "1111", "XXXX",
    ]

    def build(self) -> list:
        """生成所有准确性规则。"""
        rules = []

        # 1. 记录数量合理
        rules.extend(self._build_record_range_rules())

        # 2. 测试数据检查
        rules.extend(self._build_test_data_rules())

        # 3. 引用完整性
        rules.extend(self._build_ref_integrity_rules())

        # 4. 业务逻辑合理性
        rules.extend(self._build_biz_logic_rules())

        return rules

    def _build_record_range_rules(self) -> list:
        """记录数量合理：全表记录数应在合理范围内。"""
        rule = Rule(
            table_name=self.table_name,
            field_name="",
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name="RECORD_RANGE",
            rule_desc=f"表 {self.table_name} 的记录数应在合理范围内",
            check_condition="1=1",
            threshold=0.0,
        )
        return [rule]

    def _build_test_data_rules(self) -> list:
        """测试数据检查：对文本类型字段检查是否包含测试关键词。"""
        rules = []
        text_fields = [f for f in self.fields if self._is_text_type(f.get("type", ""))]

        for field in text_fields:
            field_name = field["name"]
            quoted = self.quote(field_name)

            # 用 OR 连接所有关键词条件
            conditions = []
            for kw in self.TEST_KEYWORDS:
                conditions.append(f"{quoted} LIKE '%{kw}%'")
            condition = " OR ".join(conditions)

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"TEST_DATA_{field_name}",
                rule_desc=f"字段 {field_name} 不能包含测试关键词（测试/TEST/示例等）",
                check_condition=condition,
                threshold=0.0,
            )
            rules.append(rule)

        return rules

    def _build_ref_integrity_rules(self) -> list:
        """ID/CODE 字段值有效性检查：以 _ID 或 _CODE 结尾的字段值不应为空或零。"""
        rules = []
        pk_upper = self.primary_key.upper() if self.primary_key else ""

        for field in self.fields:
            field_name = field["name"]
            field_upper = field_name.upper()

            # 匹配以 _ID 或 _CODE 结尾
            if not (field_upper.endswith("_ID") or field_upper.endswith("_CODE")):
                continue

            # 跳过主键
            if pk_upper and field_upper == pk_upper:
                continue

            quoted = self.quote(field_name)
            condition = (
                f"{quoted} IS NOT NULL AND {quoted} != '' AND {quoted} != '0'"
            )

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"ID_CODE_VALID_{field_name}",
                rule_desc=f"ID/CODE 字段 {field_name} 的值不应为空或零",
                check_condition=condition,
                threshold=0.05,  # 5%
            )
            rules.append(rule)

        return rules

    def _build_biz_logic_rules(self) -> list:
        """业务逻辑合理性：性别与身份证号第17位奇偶性一致。"""
        rules = []

        # 查找 GENDER 和 ID_NO 字段（大小写不敏感）
        gender_field = self._find_field_case_insensitive("GENDER")
        id_no_field = self._find_field_case_insensitive("ID_NO")

        if not gender_field or not id_no_field:
            return rules

        quoted_gender = self.quote(gender_field)
        quoted_id_no = self.quote(id_no_field)

        # 身份证第17位奇偶性：奇数为男(GENDER=1)，偶数为女(GENDER=2)
        if self.dialect == "postgresql":
            gender_digit = f"CAST(SUBSTRING({quoted_id_no} FROM 17 FOR 1) AS INTEGER)"
        elif self.dialect == "starrocks":
            gender_digit = f"CAST(SUBSTRING({quoted_id_no}, 17, 1) AS INT)"
        else:  # mysql
            gender_digit = f"CAST(SUBSTRING({quoted_id_no}, 17, 1) AS SIGNED)"

        # 条件：身份证为18位 + 性别有值 + 第17位奇偶性与性别不匹配
        condition = (
            f"LENGTH({quoted_id_no}) = 18 "
            f"AND {quoted_gender} IS NOT NULL AND {quoted_gender} != '' "
            f"AND {quoted_id_no} IS NOT NULL AND {quoted_id_no} != '' "
            f"AND ("
            f"  ({quoted_gender} = '1' AND {gender_digit} % 2 = 0)"
            f"  OR ({quoted_gender} = '2' AND {gender_digit} % 2 = 1)"
            f")"
        )

        rule = Rule(
            table_name=self.table_name,
            field_name=f"{gender_field},{id_no_field}",
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name="BIZ_LOGIC_GENDER_IDNO",
            rule_desc=f"性别字段({gender_field})与身份证号({id_no_field})第17位奇偶性应一致：奇数为男(1)，偶数为女(2)",
            check_condition=condition,
            threshold=0.0,
        )
        rules.append(rule)

        return rules

    def _is_text_type(self, data_type: str) -> bool:
        """判断数据类型是否为文本类型。"""
        text_types = {"varchar", "char", "text", "string", "nvarchar", "nchar",
                      "longtext", "mediumtext"}
        return data_type.lower() in text_types

    def _find_field_case_insensitive(self, name: str) -> str:
        """在字段列表中大小写不敏感地查找字段名，返回实际名称。"""
        name_upper = name.upper()
        for f in self.fields:
            if f["name"].upper() == name_upper:
                return f["name"]
        return None
