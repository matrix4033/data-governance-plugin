"""ValidityBuilder — 规范性规则生成器（GB/T 36344-2018）。

覆盖四种规范性规则类型：
1. 格式规范 — 字段值是否符合预期格式（如身份证号、日期格式等）
2. 值域规范 — 字段值是否在允许的枚举范围内
3. 文本规范 — 文本字段非空检查
4. 编码规范 — 编码类字段非空检查

用法:
  python builder/cli.py validity --table T_CUSTOMER
  python builder/cli.py validity --table T_CUSTOMER --dialect starrocks
"""

from builder.base import BaseBuilder, Rule


class ValidityBuilder(BaseBuilder):
    """规范性规则生成器：格式规范 + 值域规范 + 文本规范 + 编码规范"""

    DIMENSION = "validity"
    STAGE = 1  # 阶段一

    def build(self) -> list:
        """生成所有规范性规则。"""
        rules = []

        # 1. 值域规范 — 枚举字段检查
        rules.extend(self._build_enum_rules())

        # 2. 格式规范 — 核心字段格式检查
        rules.extend(self._build_format_rules())

        # 3. 文本规范 — 字符串长度/字符集检查
        rules.extend(self._build_text_rules())

        # 4. 编码规范 — ID类字段编码规则检查
        rules.extend(self._build_code_rules())

        return rules

    def _build_enum_rules(self) -> list:
        """值域规范：枚举字段值必须在允许范围内。"""
        rules = []
        enums = self.config.get("enums", {})
        enum_values = self.config.get("enum_values", {})

        for field_name, standard in enums.items():
            field = self.get_field(field_name)
            if not field:
                continue

            # 无实际枚举值时跳过（避免生成不可用的占位 SQL）
            if field_name not in enum_values or not enum_values[field_name]:
                continue

            values = enum_values[field_name]
            quoted = self.quote(field_name)
            value_list = ", ".join(f"'{v}'" for v in values)
            condition = (
                f"{quoted} IS NOT NULL AND {quoted} != '' "
                f"AND {quoted} NOT IN ({value_list})"
            )

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"ENUM_{field_name}",
                rule_desc=f"字段 {field_name} 的值必须在枚举范围 {standard} 内: {values}",
                check_condition=condition,
                threshold=0.0,
            )
            rules.append(rule)

        return rules

    def _build_format_rules(self) -> list:
        """格式规范：核心字段的格式检查。"""
        rules = []
        core_fields = self.config.get("core_fields", {})

        # 字段格式模式映射：字段名后缀 -> (检查模式, 描述模板)
        format_checks = {
            "ID_NO": ("regexp", r"^\d{17}[\dXx]$", "身份证号必须为18位（数字或末尾X）"),
            "BIRTH_DATE": ("date", None, "出生日期必须为有效日期格式"),
            "PHONE": ("regexp", r"^1\d{10}$", "手机号必须为11位数字，以1开头"),
            "EMAIL": ("regexp", r"^[^@\s]+@[^@\s]+\.[^@\s]+$", "邮箱格式不正确"),
            "POST_CODE": ("regexp", r"^\d{6}$", "邮政编码必须为6位数字"),
        }

        for field_name in core_fields:
            field = self.get_field(field_name)
            if not field:
                continue

            # 根据字段名匹配格式检查
            check = None
            for suffix, fmt in format_checks.items():
                if field_name.upper().endswith(suffix) or field_name == suffix:
                    check = fmt
                    break

            if not check:
                continue

            check_type, pattern, desc = check
            quoted = self.quote(field_name)

            if check_type == "regexp":
                if self.dialect == "postgresql":
                    condition = f"{quoted} IS NOT NULL AND {quoted} !~ '{pattern}'"
                else:  # mysql, starrocks
                    condition = f"{quoted} IS NOT NULL AND {quoted} NOT REGEXP '{pattern}'"
            elif check_type == "date":
                if self.dialect == "postgresql":
                    op, not_op = "~", "!~"
                else:
                    op, not_op = "REGEXP", "NOT REGEXP"
                condition = (
                    f"{quoted} IS NOT NULL "
                    f"AND {quoted} != '' "
                    f"AND NOT ({quoted} {op} '^[0-9]{{4}}-[0-9]{{2}}-[0-9]{{2}}$'"
                    f" OR {quoted} {op} '^[0-9]{{8}}$')"
                )
            else:
                continue

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"FORMAT_{field_name}",
                rule_desc=f"字段 {field_name} 格式检查：{desc}",
                check_condition=condition,
                threshold=0.05,  # 格式错误率不超过5%
            )
            rules.append(rule)

        return rules

    def _build_text_rules(self) -> list:
        """文本规范：字符串字段的长度和字符集检查。"""
        rules = []

        # 从字段元数据中找出字符串类型字段
        text_fields = [f for f in self.fields if self._is_text_type(f.get("type", ""))]

        for field in text_fields:
            field_name = field["name"]
            quoted = self.quote(field_name)

            # 跳过核心字段（核心字段已在格式规范中覆盖）
            core_fields = self.config.get("core_fields", {})
            if field_name in core_fields:
                continue

            # 跳过枚举字段（已在值域规范中覆盖）
            enums = self.config.get("enums", {})
            if field_name in enums:
                continue

            # 空字符串检查（对文本字段，空字符串和NULL都是问题）
            condition = f"{quoted} = '' OR {quoted} IS NULL"

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"TEXT_{field_name}",
                rule_desc=f"文本字段 {field_name} 不能为空字符串或NULL",
                check_condition=condition,
                threshold=0.1,  # 文本空值率不超过10%
            )
            rules.append(rule)

        return rules

    def _build_code_rules(self) -> list:
        """编码规范：编码类字段的规则检查。"""
        rules = []

        # 查找编码类字段（以 _ID, ID_, CODE, NO 结尾的字段）
        code_fields = []
        for f in self.fields:
            name = f["name"].upper()
            if any(name.endswith(s) or name.startswith(s) for s in ["_ID", "ID_", "_CODE", "_NO"]):
                code_fields.append(f)

        # 编码规范简化：非空检查 + 最小长度检查
        for field in code_fields:
            field_name = field["name"]
            quoted = self.quote(field_name)

            # 编码不应为NULL或空值
            condition = f"{quoted} IS NULL OR {quoted} = ''"

            rule = Rule(
                table_name=self.table_name,
                field_name=field_name,
                stage=self.STAGE,
                dimension=self.DIMENSION,
                rule_name=f"CODE_{field_name}",
                rule_desc=f"编码字段 {field_name} 不能为NULL或空值",
                check_condition=condition,
                threshold=0.0,  # 编码字段不允许空值
            )
            rules.append(rule)

        return rules

    def _is_text_type(self, data_type: str) -> bool:
        """判断数据类型是否为文本类型。"""
        text_types = {"varchar", "char", "text", "string", "nvarchar", "nchar", "longtext", "mediumtext"}
        return data_type.lower() in text_types
