"""ConsistencyBuilder — 一致性规则生成器（GB/T 36344-2018）。

覆盖两种一致性规则类型：
1. 时序关系 — 日期字段之间的逻辑顺序检查（如 BIRTH_DATE <= 其他日期字段）
2. 字段依赖 — 条件字段有值时依赖字段不应为空

用法:
  python builder/cli.py consistency --table T_CUSTOMER
  python builder/cli.py consistency --table T_CUSTOMER --dialect starrocks
"""

from builder.base import BaseBuilder, Rule


class ConsistencyBuilder(BaseBuilder):
    """一致性规则生成器：时序关系 + 字段依赖"""

    DIMENSION = "consistency"
    STAGE = 2  # 阶段二

    # 预定义的时序关系对：(earlier_field, later_field)
    # 当 later=None 时，earlier 需小于表中其他所有日期字段
    DATE_ORDER_PAIRS = [
        ("BIRTH_DATE", None),
        ("CREATE_TIME", "UPDATE_TIME"),
        ("START_DATE", "END_DATE"),
        ("EFF_DATE", "EXP_DATE"),
    ]

    # 预定义的字段依赖对：(condition_field, depend_field, description)
    FIELD_DEP_PAIRS = [
        ("ID_TYPE", "ID_NO", "证件类型有值时，证件号码不能为空"),
    ]

    def build(self) -> list:
        """生成所有一致性规则。"""
        rules = []

        # 1. 时序关系
        rules.extend(self._build_date_order_rules())

        # 2. 字段依赖
        rules.extend(self._build_field_dep_rules())

        return rules

    def _build_date_order_rules(self) -> list:
        """时序关系检查：日期字段逻辑顺序。"""
        rules = []

        for earlier, later in self.DATE_ORDER_PAIRS:
            actual_earlier = self._find_field_case_insensitive(earlier)
            if not actual_earlier:
                continue

            quoted_earlier = self.quote(actual_earlier)

            if later is None:
                # earlier 应对表中其他所有日期字段生成规则
                date_fields = self._get_date_fields()
                for other in date_fields:
                    if other.upper() == earlier.upper():
                        continue
                    actual_other = self._find_field_case_insensitive(other)
                    if not actual_other:
                        continue
                    quoted_other = self.quote(actual_other)

                    rule_name = f"DATE_ORDER_{actual_earlier}_{actual_other}"
                    condition = (
                        f"{quoted_earlier} IS NOT NULL AND {quoted_earlier} != '' "
                        f"AND {quoted_other} IS NOT NULL AND {quoted_other} != '' "
                        f"AND {quoted_earlier} > {quoted_other}"
                    )

                    rule = Rule(
                        table_name=self.table_name,
                        field_name=f"{actual_earlier},{actual_other}",
                        stage=self.STAGE,
                        dimension=self.DIMENSION,
                        rule_name=rule_name,
                        rule_desc=f"日期顺序检查：{actual_earlier} 应早于或等于 {actual_other}",
                        check_condition=condition,
                        threshold=0.0,
                    )
                    rules.append(rule)
            else:
                # 有明确 pair
                actual_later = self._find_field_case_insensitive(later)
                if not actual_later:
                    continue
                quoted_later = self.quote(actual_later)

                rule_name = f"DATE_ORDER_{actual_earlier}_{actual_later}"
                condition = (
                    f"{quoted_earlier} IS NOT NULL AND {quoted_earlier} != '' "
                    f"AND {quoted_later} IS NOT NULL AND {quoted_later} != '' "
                    f"AND {quoted_earlier} > {quoted_later}"
                )

                rule = Rule(
                    table_name=self.table_name,
                    field_name=f"{actual_earlier},{actual_later}",
                    stage=self.STAGE,
                    dimension=self.DIMENSION,
                    rule_name=rule_name,
                    rule_desc=f"日期顺序检查：{actual_earlier} 应早于或等于 {actual_later}",
                    check_condition=condition,
                    threshold=0.0,
                )
                rules.append(rule)

        return rules

    def _build_field_dep_rules(self) -> list:
        """字段依赖检查：条件字段有值时依赖字段不应为空。"""
        rules = []

        for cond, dep, desc in self.FIELD_DEP_PAIRS:
            actual_cond = self._find_field_case_insensitive(cond)
            actual_dep = self._find_field_case_insensitive(dep)

            if not actual_cond or not actual_dep:
                continue

            quoted_cond = self.quote(actual_cond)
            quoted_dep = self.quote(actual_dep)

            rule_name = f"FIELD_DEP_{actual_cond}_{actual_dep}"
            condition = (
                f"{quoted_cond} IS NOT NULL AND {quoted_cond} != '' "
                f"AND ({quoted_dep} IS NULL OR {quoted_dep} = '')"
            )

            rule = Rule(
                table_name=self.table_name,
                field_name=f"{actual_cond},{actual_dep}",
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=rule_name,
                rule_desc=desc,
                check_condition=condition,
                threshold=0.0,
            )
            rules.append(rule)

        return rules

    def _get_date_fields(self) -> list:
        """获取表中所有日期类型的字段名列表。"""
        date_keywords = {"date", "datetime", "timestamp", "time"}
        date_name_patterns = {"DATE", "TIME", "YMD"}

        result = []
        for f in self.fields:
            name = f["name"]
            dtype = f.get("type", "").lower()

            # 按数据类型判断
            if any(kw in dtype for kw in date_keywords):
                result.append(name)
                continue

            # 按字段名模式判断
            name_upper = name.upper()
            for pat in date_name_patterns:
                if pat in name_upper:
                    result.append(name)
                    break

        return result

    def _find_field_case_insensitive(self, name: str) -> str:
        """在字段列表中大小写不敏感地查找字段名，返回实际名称。"""
        name_upper = name.upper()
        for f in self.fields:
            if f["name"].upper() == name_upper:
                return f["name"]
        return None
