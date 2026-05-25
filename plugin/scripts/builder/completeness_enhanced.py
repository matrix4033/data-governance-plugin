"""Enhanced CompletenessBuilder — 基于字段元数据的完整性规则生成器。

支持:
1. 从 config['core_fields'] 读取核心字段配置（兼容旧配置）
2. 从字段的 is_core_field 属性判断核心字段
3. 根据字段来源判断核心字段（知识图谱元数据）
"""

from builder.base import BaseBuilder, Rule


class CompletenessBuilderEnhanced(BaseBuilder):
    """增强版完整性规则生成器：支持从字段元数据判断核心字段"""

    DIMENSION = "completeness"
    STAGE = 2  # 阶段二

    # 核心字段业务术语（从知识图谱的 business_term 判断）
    CORE_BUSINESS_TERMS = {
        "自然人唯一标识", "身份证号码", "证件号码", "姓名",
        "性别", "出生日期", "民族", "国籍",
    }

    def build(self) -> list:
        """生成所有完整性规则。"""
        rules = []

        # 1. 核心元素完整性
        rules.extend(self._build_core_null_rules())

        # 2. 非核心元素完整性
        rules.extend(self._build_noncore_null_rules())

        # 3. 联合元素完整性
        rules.extend(self._build_joint_null_rules())

        # 4. 记录完整性
        rules.extend(self._build_record_count_rules())

        return rules

    def _is_core_field(self, field: dict) -> bool:
        """判断字段是否为核心字段。

        判断顺序：
        1. 字段的 is_core_field 属性
        2. business_term 是否在核心业务术语列表中
        3. config['core_fields'] 中是否有匹配
        """
        # 1. 优先使用 is_core_field 属性
        if field.get("is_core_field"):
            return True

        # 2. 根据 business_term 判断
        business_term = field.get("business_term", "")
        if business_term in self.CORE_BUSINESS_TERMS:
            return True

        # 3. 兼容 config 中的 core_fields 配置
        core_fields = self.config.get("core_fields", {})
        field_name_upper = field["name"].upper()
        for cf in core_fields:
            if field_name_upper == cf.upper():
                return True

        return False

    def _build_core_null_rules(self) -> list:
        """核心元素完整性：核心字段不允许为 NULL 或空字符串。"""
        rules = []
        thresholds = self.config.get("thresholds", {})
        threshold = thresholds.get("core_null_ratio", 0.05)

        core_fields_config = self.config.get("core_fields", {})

        for field in self.fields:
            if not self._is_core_field(field):
                continue

            field_name = field["name"]
            business_term = field.get("business_term", "")

            quoted = self.quote(field_name)
            condition = f"{quoted} IS NULL OR {quoted} = ''"

            # 优先使用 business_term
            desc_field = business_term if business_term else field_name
            # 尝试从 config 获取中文描述
            for k, v in core_fields_config.items():
                if k.upper() == field_name.upper():
                    desc_field = v
                    break

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"CORE_NULL_{field_name}",
                rule_desc=f"核心字段 {desc_field} 不能为 NULL 或空字符串",
                check_condition=condition,
                threshold=threshold,
            )
            rules.append(rule)

        return rules

    def _build_noncore_null_rules(self) -> list:
        """非核心元素完整性：非核心字段为 NULL 或空字符串告警。"""
        rules = []
        thresholds = self.config.get("thresholds", {})
        threshold = thresholds.get("noncore_null_ratio", 0.3)

        for field in self.fields:
            if self._is_core_field(field):
                continue

            field_name = field["name"]
            business_term = field.get("business_term", "")

            quoted = self.quote(field_name)
            condition = f"{quoted} IS NULL OR {quoted} = ''"

            desc_field = business_term if business_term else field_name

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"NULL_{field_name}",
                rule_desc=f"字段 {desc_field} 不应为 NULL 或空字符串",
                check_condition=condition,
                threshold=threshold,
            )
            rules.append(rule)

        return rules

    def _build_joint_null_rules(self) -> list:
        """联合元素完整性：核心字段组合不能同时为空。"""
        rules = []

        # 查找姓名和证件号/ID字段
        name_field = None
        id_field = None

        for f in self.fields:
            bt = f.get("business_term", "").lower()
            if "姓名" in bt:
                name_field = f["name"]
            if "身份证" in bt or "证件号码" in bt:
                id_field = f["name"]

        if not name_field or not id_field:
            return rules

        quoted_name = self.quote(name_field)
        quoted_id = self.quote(id_field)

        condition = (
            f"({quoted_name} IS NULL OR {quoted_name} = '') "
            f"AND ({quoted_id} IS NULL OR {quoted_id} = '')"
        )

        rule = Rule(
            table_name=self.table_name,
            field_name=f"{name_field},{id_field}",
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"JOINT_NULL_{name_field}_{id_field}",
            rule_desc=f"姓名和证件号码不能同时为空",
            check_condition=condition,
            threshold=0.0,
        )
        rules.append(rule)

        return rules

    def _build_record_count_rules(self) -> list:
        """记录完整性：全表应有数据记录。"""
        rule = Rule(
            table_name=self.table_name,
            field_name="",
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name="RECORD_COUNT",
            rule_desc=f"表 {self.table_name} 应有数据记录，不能为空表",
            check_condition="1=0",  # 占位条件
            threshold=0.0,
        )
        return [rule]

    def _find_field_case_insensitive(self, name: str) -> str:
        """在字段列表中大小写不敏感地查找字段名。"""
        name_upper = name.upper()
        for f in self.fields:
            if f["name"].upper() == name_upper:
                return f["name"]
        return None
