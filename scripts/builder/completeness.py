"""CompletenessBuilder — 完整性规则生成器（GB/T 36344-2018）。

覆盖四种完整性规则类型：
1. 核心元素完整性 — core_fields 字段不允许为 NULL 或空字符串
2. 非核心元素完整性 — 其他字段为 NULL 或空字符串告警
3. 联合元素完整性 — 核心字段组合不能同时为空
4. 记录完整性 — 全表应有数据记录

用法:
  python builder/cli.py completeness --table T_CUSTOMER
  python builder/cli.py completeness --table T_CUSTOMER --dialect starrocks
"""

from builder.base import BaseBuilder, Rule


class CompletenessBuilder(BaseBuilder):
    """完整性规则生成器：核心元素 + 非核心元素 + 联合元素 + 记录完整性"""

    DIMENSION = "completeness"
    STAGE = 2  # 阶段二

    # 预定义的联合完整性检测组合
    JOINT_COMBOS = [
        ("PERSION_ID", "NAME"),
        ("ID_NO", "NAME"),
    ]

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

    def _build_core_null_rules(self) -> list:
        """核心元素完整性：core_fields 字段不允许为 NULL 或空字符串。"""
        rules = []
        core_fields = self.config.get("core_fields", {})
        thresholds = self.config.get("thresholds", {})
        threshold = thresholds.get("core_null_ratio", 0.05)

        for field_name in core_fields:
            # 大小写不敏感匹配：查找表中实际存在的字段名
            actual_name = self._find_field_case_insensitive(field_name)
            if not actual_name:
                continue

            quoted = self.quote(actual_name)
            condition = f"{quoted} IS NULL OR {quoted} = ''"

            rule = Rule(
                table_name=self.table_name,
                field_name=actual_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"CORE_NULL_{actual_name}",
                rule_desc=f"核心字段 {actual_name}（{core_fields[field_name]}）不能为 NULL 或空字符串",
                check_condition=condition,
                threshold=threshold,
            )
            rules.append(rule)

        return rules

    def _build_noncore_null_rules(self) -> list:
        """非核心元素完整性：非核心、非主键字段为 NULL 或空字符串告警。"""
        rules = []
        core_fields = self.config.get("core_fields", {})
        thresholds = self.config.get("thresholds", {})
        threshold = thresholds.get("noncore_null_ratio", 0.3)

        core_fields_upper = {k.upper() for k in core_fields}
        pk_upper = self.primary_key.upper() if self.primary_key else ""

        for field in self.fields:
            field_name = field["name"]
            field_upper = field_name.upper()

            # 跳过核心字段
            if field_upper in core_fields_upper:
                continue

            # 跳过主键
            if pk_upper and field_upper == pk_upper:
                continue

            quoted = self.quote(field_name)
            condition = f"{quoted} IS NULL OR {quoted} = ''"

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"NULL_{field_name}",
                rule_desc=f"字段 {field_name} 不应为 NULL 或空字符串",
                check_condition=condition,
                threshold=threshold,
            )
            rules.append(rule)

        return rules

    def _build_joint_null_rules(self) -> list:
        """联合元素完整性：核心字段组合不能同时为空。"""
        rules = []

        for combo in self.JOINT_COMBOS:
            field_a, field_b = combo

            # 大小写不敏感匹配实际字段名
            actual_a = self._find_field_case_insensitive(field_a)
            actual_b = self._find_field_case_insensitive(field_b)

            if not actual_a or not actual_b:
                continue

            quoted_a = self.quote(actual_a)
            quoted_b = self.quote(actual_b)
            rule_name = f"JOINT_NULL_{actual_a}_{actual_b}"

            condition = (
                f"({quoted_a} IS NULL OR {quoted_a} = '') "
                f"AND ({quoted_b} IS NULL OR {quoted_b} = '')"
            )

            rule = Rule(
                table_name=self.table_name,
                field_name=f"{actual_a},{actual_b}",
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=rule_name,
                rule_desc=f"字段 {actual_a} 和 {actual_b} 不能同时为空",
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
            check_condition="1=0",  # 占位条件，实际含义通过规则名表达
            threshold=0.0,
        )
        return [rule]

    def _find_field_case_insensitive(self, name: str) -> str:
        """在字段列表中大小写不敏感地查找字段名，返回实际名称。"""
        name_upper = name.upper()
        for f in self.fields:
            if f["name"].upper() == name_upper:
                return f["name"]
        return None
