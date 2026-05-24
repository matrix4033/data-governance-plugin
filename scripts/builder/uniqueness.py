"""UniquenessBuilder — 唯一性规则生成器（GB/T 36344-2018）。

覆盖三种唯一性规则类型：
1. 主键唯一性 — 主键字段是否有重复值
2. 业务唯一性 — 业务含义上应唯一的字段（如身份证号）是否有重复
3. 条件唯一性 — 在满足特定条件时字段值应唯一

用法:
  python builder/cli.py uniqueness --table T_CUSTOMER
  python builder/cli.py uniqueness --table T_CUSTOMER --dialect starrocks
"""

from builder.base import BaseBuilder, Rule


class UniquenessBuilder(BaseBuilder):
    """唯一性规则生成器：主键唯一性 + 业务唯一性 + 条件唯一性"""

    DIMENSION = "uniqueness"
    STAGE = 1  # 阶段一

    def build(self) -> list:
        """生成所有唯一性规则。"""
        rules = []

        # 1. 主键唯一性
        rules.extend(self._build_primary_key_rules())

        # 2. 业务唯一性
        rules.extend(self._build_business_unique_rules())

        # 3. 条件唯一性
        rules.extend(self._build_conditional_unique_rules())

        return rules

    def _build_primary_key_rules(self) -> list:
        """主键唯一性：主键字段不允许重复。"""
        rules = []
        if not self.primary_key:
            return rules

        pk = self.primary_key
        quoted = self.quote(pk)

        # 主键重复检查
        condition = (
            f"{quoted} IN (\n"
            f"    SELECT {quoted}\n"
            f"    FROM {self._table_ref()}\n"
            f"    GROUP BY {quoted}\n"
            f"    HAVING COUNT(1) > 1\n"
            f")"
        )

        rule = Rule(
            table_name=self.table_name,
            field_name=pk,
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"PK_UNIQUE_{pk}",
            rule_desc=f"主键 {pk} 必须唯一，无重复值",
            check_condition=condition,
            threshold=0.0,  # 主键不允许重复
        )
        rules.append(rule)

        return rules

    def _build_business_unique_rules(self) -> list:
        """业务唯一性：业务上应唯一的字段（如身份证号、证件ID等）不允许重复。"""
        rules = []

        # 检查 core_fields 中业务上应唯一的字段
        core_fields = self.config.get("core_fields", {})
        unique_candidates = self._get_unique_candidates()

        for field_name, business_term in core_fields.items():
            field = self.get_field(field_name)
            if not field:
                continue

            # 跳过已作为主键处理的字段
            if field_name == self.primary_key:
                continue

            # 检查是否应唯一
            if field_name not in unique_candidates:
                continue

            quoted = self.quote(field_name)

            condition = (
                f"{quoted} IN (\n"
                f"    SELECT {quoted}\n"
                f"    FROM {self._table_ref()}\n"
                f"    WHERE {quoted} IS NOT NULL AND {quoted} != ''\n"
                f"    GROUP BY {quoted}\n"
                f"    HAVING COUNT(1) > 1\n"
                f")"
            )

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"BIZ_UNIQUE_{field_name}",
                rule_desc=f"业务字段 {field_name}（{business_term}）应唯一，无重复值",
                check_condition=condition,
                threshold=0.0,
            )
            rules.append(rule)

        return rules

    def _build_conditional_unique_rules(self) -> list:
        """条件唯一性：在特定条件下字段值应唯一。"""
        rules = []

        # 常见条件唯一性模式：
        # 1. 非NULL的唯一约束
        for f in self.fields:
            field_name = f["name"]

            # 跳过主键
            if field_name == self.primary_key:
                continue
            # 跳过已在业务唯一性中覆盖的核心字段
            if field_name in self.config.get("core_fields", {}):
                continue

            # 非空字段应唯一（如果字段包含 "UNIQUE" 暗示或名称暗示）
            if not self._implies_unique(field_name):
                continue

            quoted = self.quote(field_name)

            condition = (
                f"{quoted} IS NOT NULL AND {quoted} != ''\n"
                f"AND {quoted} IN (\n"
                f"    SELECT {quoted}\n"
                f"    FROM {self._table_ref()}\n"
                f"    WHERE {quoted} IS NOT NULL AND {quoted} != ''\n"
                f"    GROUP BY {quoted}\n"
                f"    HAVING COUNT(1) > 1\n"
                f")"
            )

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"COND_UNIQUE_{field_name}",
                rule_desc=f"字段 {field_name} 在非空时应唯一",
                check_condition=condition,
                threshold=0.01,  # 允许少量异常
            )
            rules.append(rule)

        return rules

    def _get_unique_candidates(self) -> set:
        """获取业务上应唯一的字段名集合。"""
        # 根据字段名语义推断应唯一的字段
        unique_indicators = ["ID_NO", "证件ID", "证件号码", "身份证号",
                             "CREDIT_CODE", "统一社会信用代码",
                             "PHONE", "PHONE_NO", "手机号",
                             "EMAIL", "邮箱",
                             "CODE", "SERIAL_NO", "流水号"]

        candidates = set()
        for f in self.fields:
            name = f["name"]
            name_upper = name.upper()
            business_term = f.get("business_term", "")

            # 根据字段名匹配
            for indicator in unique_indicators:
                if indicator.upper() in name_upper or indicator in business_term:
                    candidates.add(name)
                    break

        return candidates

    @staticmethod
    def _implies_unique(field_name: str) -> bool:
        """根据字段名推断是否应唯一。"""
        upper = field_name.upper()
        unique_hints = ["CODE", "NUM", "NO_", "SERIAL"]
        return any(hint in upper for hint in unique_hints)
