"""Enhanced ConsistencyBuilder — 基于业务语义的一致性规则生成器。

支持:
1. 证件类型与证件号码关联校验
2. 性别与身份证号第17位奇偶性校验
3. 日期字段时序关系
"""

from builder.base import BaseBuilder, Rule


class ConsistencyBuilderEnhanced(BaseBuilder):
    """增强版一致性规则生成器：基于业务语义推断一致性关系"""

    DIMENSION = "consistency"
    STAGE = 2  # 阶段二

    def build(self) -> list:
        """生成所有一致性规则。"""
        rules = []

        # 1. 证件类型与证件号码关联校验
        rules.extend(self._build_id_type_no_consistency())

        # 2. 性别与身份证号奇偶性校验
        rules.extend(self._build_gender_idno_consistency())

        # 3. 日期时序关系
        rules.extend(self._build_date_order_rules())

        return rules

    def _build_id_type_no_consistency(self) -> list:
        """证件类型与证件号码关联校验。

        当证件类型为'身份证'时，号码必须为18位
        当证件类型为'护照'时，号码格式符合护照规则
        ...
        """
        rules = []

        # 查找证件类型和证件号码字段
        id_type_field = None
        id_no_field = None

        for f in self.fields:
            bt = f.get("business_term", "").lower()
            name = f["name"].lower()
            if "证件类型" in bt or bt == "证件类型":
                id_type_field = f["name"]
            if "身份证号码" in bt or "证件号码" in bt or bt == "证件号码":
                id_no_field = f["name"]

        if not id_type_field or not id_no_field:
            return rules

        quoted_type = self.quote(id_type_field)
        quoted_no = self.quote(id_no_field)

        # 身份证类型为"01-居民身份证"或"身份证"时，号码应为18位
        if self.dialect == "postgresql":
            check_18 = f"{quoted_no} ~ '^[1-9]\\d{{16}}[\\dXx]$'"
        else:
            check_18 = f"{quoted_no} REGEXP '^[1-9]\\d{{16}}[\\dXx]$'"

        # 证件类型为身份证，但号码不是18位
        condition = (
            f"{quoted_type} IS NOT NULL AND {quoted_type} != '' "
            f"AND ({quoted_type} LIKE '%身份证%' OR {quoted_type} = '01') "
            f"AND {quoted_no} IS NOT NULL AND {quoted_no} != '' "
            f"AND NOT ({check_18})"
        )

        rule = Rule(
            table_name=self.table_name,
            field_name=f"{id_type_field},{id_no_field}",
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"CONSIST_{id_type_field}_{id_no_field}",
            rule_desc=f"证件类型为身份证时，证件号码必须为18位，符合GB 11643标准",
            check_condition=condition,
            threshold=0.0,
        )
        rules.append(rule)

        return rules

    def _build_gender_idno_consistency(self) -> list:
        """性别与身份证号第17位奇偶性校验。

        身份证第17位：奇数为男(1)，偶数为女(2)
        """
        rules = []

        # 查找性别和身份证号字段
        gender_field = None
        id_no_field = None

        for f in self.fields:
            bt = f.get("business_term", "").lower()
            if "性别" in bt:
                gender_field = f["name"]
            if "身份证号码" in bt:
                id_no_field = f["name"]

        if not gender_field or not id_no_field:
            return rules

        quoted_gender = self.quote(gender_field)
        quoted_id_no = self.quote(id_no_field)

        # 身份证第17位奇偶性
        if self.dialect == "postgresql":
            gender_digit = f"CAST(SUBSTRING({quoted_id_no} FROM 17 FOR 1) AS INTEGER)"
        elif self.dialect == "starrocks":
            gender_digit = f"CAST(SUBSTRING({quoted_id_no}, 17, 1) AS INT)"
        else:  # mysql
            gender_digit = f"CAST(SUBSTRING({quoted_id_no}, 17, 1) AS SIGNED)"

        # 条件：18位身份证 + 性别与第17位奇偶性不匹配
        if self.dialect == "postgresql":
            check_18 = f"{quoted_id_no} ~ '^[1-9]\\d{{16}}[\\dXx]$'"
        else:
            check_18 = f"{quoted_id_no} REGEXP '^[1-9]\\d{{16}}[\\dXx]$'"

        condition = (
            f"LENGTH({quoted_id_no}) = 18 "
            f"AND {quoted_gender} IS NOT NULL AND {quoted_gender} != '' "
            f"AND {quoted_id_no} IS NOT NULL AND {quoted_id_no} != '' "
            f"AND NOT ({check_18}) "
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
            rule_name=f"CONSIST_{gender_field}_{id_no_field}",
            rule_desc=f"性别字段({gender_field})与身份证号({id_no_field})第17位奇偶性应一致：奇数为男(1)，偶数为女(2)",
            check_condition=condition,
            threshold=0.0,
        )
        rules.append(rule)

        return rules

    def _build_date_order_rules(self) -> list:
        """日期字段时序关系检查。"""
        rules = []

        # 查找出生日期字段
        birth_field = None
        for f in self.fields:
            bt = f.get("business_term", "").lower()
            if "出生日期" in bt:
                birth_field = f["name"]
                break

        if not birth_field:
            return rules

        quoted_birth = self.quote(birth_field)

        # 出生日期不应晚于当前日期
        if self.dialect == "postgresql":
            condition = (
                f"{quoted_birth} IS NOT NULL AND {quoted_birth} != '' "
                f"AND {quoted_birth} > CURRENT_DATE"
            )
        else:
            condition = (
                f"{quoted_birth} IS NOT NULL AND {quoted_birth} != '' "
                f"AND {quoted_birth} > CURDATE()"
            )

        rule = Rule(
            table_name=self.table_name,
            field_name=birth_field,
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"DATE_ORDER_{birth_field}",
            rule_desc=f"出生日期({birth_field})不应晚于当前日期",
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

            if any(kw in dtype for kw in date_keywords):
                result.append(name)
                continue

            name_upper = name.upper()
            for pat in date_name_patterns:
                if pat in name_upper:
                    result.append(name)
                    break

        return result

    def _find_field_case_insensitive(self, name: str) -> str:
        """在字段列表中大小写不敏感地查找字段名。"""
        name_upper = name.upper()
        for f in self.fields:
            if f["name"].upper() == name_upper:
                return f["name"]
        return None
