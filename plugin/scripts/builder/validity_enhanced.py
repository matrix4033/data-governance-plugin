"""Enhanced ValidityBuilder — 基于业务语义的规范性规则生成器。

不再依赖 config.json 中的英文字段名匹配，
而是根据知识图谱返回的 business_term 推断规则类型。

支持:
1. 枚举值规则 — 根据 business_term 匹配标准枚举值
2. 格式规则 — 身份证、日期、手机号等格式校验
3. 文本规则 — 姓名、地址等文本规范化
4. 编码规则 — ID类字段非空检查
"""

from builder.base import BaseBuilder, Rule
from builder.semantic import (
    match_business_term,
    get_enum_values,
    STANDARD_ENUMS,
)


class ValidityBuilderEnhanced(BaseBuilder):
    """增强版规范性规则生成器：基于业务语义推断规则类型"""

    DIMENSION = "validity"
    STAGE = 1  # 阶段一

    def build(self) -> list:
        """生成所有规范性规则。"""
        rules = []

        for field in self.fields:
            field_name = field["name"]
            business_term = field.get("business_term", "")
            data_type = field.get("type", "")

            # 跳过非文本类型
            if not self._is_text_type(data_type):
                continue

            # 尝试匹配业务语义
            matched = match_business_term(business_term)

            if matched:
                rule_type, options = matched
                if rule_type == "enum":
                    rules.extend(self._build_enum_rule(field, options))
                elif rule_type == "id_card":
                    rules.extend(self._build_id_card_rule(field, options))
                elif rule_type == "date":
                    rules.extend(self._build_date_rule(field, options))
                elif rule_type == "phone":
                    rules.extend(self._build_phone_rule(field, options))
                elif rule_type == "text":
                    rules.extend(self._build_text_rule(field, options))
            else:
                # 没有匹配到业务语义的字段，生成通用文本规则
                rules.extend(self._build_generic_text_rule(field))

        return rules

    def _build_enum_rule(self, field, options) -> list:
        """生成枚举值规则。"""
        field_name = field["name"]
        business_term = field.get("business_term", "")
        standard = options.get("standard", "")

        # 获取枚举值
        enum_values = get_enum_values(business_term)
        if not enum_values:
            # 尝试从 config 获取
            enum_values = options.get("values")

        if not enum_values:
            return []

        quoted = self.quote(field_name)
        value_list = ", ".join(f"'{v}'" for v in enum_values)

        # 枚举值不在范围内
        condition = (
            f"{quoted} IS NOT NULL AND {quoted} != '' "
            f"AND {quoted} NOT IN ({value_list})"
        )

        desc = options.get("desc", "字段 {field} 值必须在标准范围内").format(
            field=field_name, standard=standard
        )

        rule = Rule(
            table_name=self.table_name,
            field_name=field_name,
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"ENUM_{field_name}",
            rule_desc=f"{business_term} {desc}",
            check_condition=condition,
            threshold=0.0,
        )
        return [rule]

    def _build_id_card_rule(self, field, options) -> list:
        """生成身份证格式规则。"""
        field_name = field["name"]
        business_term = field.get("business_term", "")
        standard = options.get("standard", "GB 11643")

        quoted = self.quote(field_name)

        # 18位身份证格式校验（带校验位）
        # 最后一位可以是数字或X/x
        if self.dialect == "postgresql":
            check_18 = f"{quoted} ~ '^[1-9]\\d{{16}}[\\dXx]$'"
            check_15 = f"{quoted} ~ '^[1-9]\\d{{14}}$'"
        else:
            check_18 = f"{quoted} REGEXP '^[1-9]\\d{{16}}[\\dXx]$'"
            check_15 = f"{quoted} REGEXP '^[1-9]\\d{{14}}$'"

        # 格式无效
        condition = (
            f"{quoted} IS NOT NULL AND {quoted} != '' "
            f"AND NOT ({check_18} OR {check_15})"
        )

        rule = Rule(
            table_name=self.table_name,
            field_name=field_name,
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"FORMAT_{field_name}",
            rule_desc=f"{business_term}必须符合{standard}标准规定（15位或18位）",
            check_condition=condition,
            threshold=0.05,
        )
        return [rule]

    def _build_date_rule(self, field, options) -> list:
        """生成日期格式规则。"""
        field_name = field["name"]
        business_term = field.get("business_term", "")
        pattern = options.get("pattern", r"^\d{8}$|^\d{4}-\d{2}-\d{2}$")

        quoted = self.quote(field_name)

        if self.dialect == "postgresql":
            check = f"{quoted} ~ '^{pattern}$'"
        else:
            check = f"{quoted} REGEXP '^{pattern}$'"

        condition = (
            f"{quoted} IS NOT NULL AND {quoted} != '' AND NOT ({check})"
        )

        rule = Rule(
            table_name=self.table_name,
            field_name=field_name,
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"FORMAT_{field_name}",
            rule_desc=f"{business_term}必须符合日期格式规范",
            check_condition=condition,
            threshold=0.05,
        )
        return [rule]

    def _build_phone_rule(self, field, options) -> list:
        """生成手机号格式规则。"""
        field_name = field["name"]
        business_term = field.get("business_term", "")
        pattern = options.get("pattern", r"^1\d{10}$")

        quoted = self.quote(field_name)

        if self.dialect == "postgresql":
            check = f"{quoted} ~ '^{pattern}$'"
        else:
            check = f"{quoted} REGEXP '^{pattern}$'"

        condition = (
            f"{quoted} IS NOT NULL AND {quoted} != '' AND NOT ({check})"
        )

        rule = Rule(
            table_name=self.table_name,
            field_name=field_name,
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"FORMAT_{field_name}",
            rule_desc=f"{business_term}必须为11位手机号",
            check_condition=condition,
            threshold=0.05,
        )
        return [rule]

    def _build_text_rule(self, field, options) -> list:
        """生成文本规范化规则。"""
        field_name = field["name"]
        business_term = field.get("business_term", "")
        desc = options.get("desc", "文本规范化")

        quoted = self.quote(field_name)

        # 检查首尾空格、非法特殊字符
        # 简单检查：首尾空格
        condition = (
            f"{quoted} != TRIM({quoted})"
        )

        rule = Rule(
            table_name=self.table_name,
            field_name=field_name,
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"TEXT_{field_name}",
            rule_desc=f"{business_term}：{desc}",
            check_condition=condition,
            threshold=0.0,
        )
        return [rule]

    def _build_generic_text_rule(self, field) -> list:
        """为未匹配到业务语义的字段生成通用文本规则。"""
        field_name = field["name"]
        quoted = self.quote(field_name)

        # 空字符串检查
        condition = f"{quoted} = '' OR {quoted} IS NULL"

        rule = Rule(
            table_name=self.table_name,
            field_name=field_name,
            stage=self.STAGE,
            dimension=self.DIMENSION,
            rule_name=f"TEXT_{field_name}",
            rule_desc=f"文本字段 {field_name} 不能为空字符串或NULL",
            check_condition=condition,
            threshold=0.1,
        )
        return [rule]

    def _is_text_type(self, data_type: str) -> bool:
        """判断数据类型是否为文本类型。"""
        text_types = {"varchar", "char", "text", "string", "nvarchar", "nchar",
                      "longtext", "mediumtext"}
        return data_type.lower() in text_types
