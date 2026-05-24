"""BaseBuilder — 所有维度 Builder 的基类。

提供 SQL 段生成和输出格式化能力，各维度 Builder 继承此类并实现 build() 方法。
"""

import csv
import json
import os
from datetime import datetime


class Rule:
    """一条质检规则的完整表示。"""

    def __init__(self, table_name, field_name, stage, dimension, rule_name,
                 rule_desc, check_condition, threshold=None):
        self.table_name = table_name
        self.field_name = field_name
        self.stage = stage
        self.dimension = dimension
        self.rule_name = rule_name
        self.rule_desc = rule_desc
        self.check_condition = check_condition  # WHERE 子句的条件部分
        self.threshold = threshold
        self.generated_by = "builder"  # or "llm"

    def to_csv_row(self):
        return {
            "id": "",
            "table_name": self.table_name,
            "stage": self.stage,
            "dimension": self.dimension,
            "rule_name": self.rule_name,
            "field_name": self.field_name,
            "rule_desc": self.rule_desc,
            "check_condition": self.check_condition,
            "threshold": self.threshold if self.threshold is not None else "",
            "enabled": "true",
        }

    @classmethod
    def from_csv_row(cls, row: dict) -> "Rule":
        """从 CSV dict 行重建 Rule 对象。"""
        return cls(
            table_name=row.get("table_name", ""),
            field_name=row.get("field_name", ""),
            stage=int(row["stage"]) if row.get("stage") else 0,
            dimension=row.get("dimension", ""),
            rule_name=row.get("rule_name", ""),
            rule_desc=row.get("rule_desc", ""),
            check_condition=row.get("check_condition", "1=1"),
            threshold=float(row["threshold"]) if row.get("threshold") else None,
        )


class BaseBuilder:
    """Builder 基类，所有维度 Builder 继承此类。"""

    def __init__(self, config: dict, table_name: str, schema: str,
                 fields: list, primary_key: str = None):
        self.config = config
        self.table_name = table_name
        self.schema = schema or config.get("schema", "")
        self.fields = fields  # [{"name":..., "type":..., "business_term":..., "nullable":...}, ...]
        self.primary_key = primary_key or self._guess_primary_key()
        self.dialect = config.get("dialect", "mysql")
        self.error_table = config.get("error_table", "sjjt_error.error_info")
        self.output_dir = config.get("output_dir", "output")

    def _guess_primary_key(self):
        """从 config 或字段名猜测主键。"""
        pk_map = self.config.get("primary_keys", {})
        if self.table_name in pk_map:
            return pk_map[self.table_name]
        for f in self.fields:
            name = f["name"].upper()
            if name.endswith("_ID") or name == "ID":
                return f["name"]
        return self.fields[0]["name"] if self.fields else "id"

    def build(self) -> list:
        """生成规则列表。子类必须实现。"""
        raise NotImplementedError

    def generate_sql(self, rule: Rule) -> str:
        """为一条规则生成 4 段 SQL，用 --- 分隔。"""
        table_ref = self._table_ref()
        condition = rule.check_condition

        # ① 全量数据量
        sql_count = f"SELECT COUNT(1) AS total_count FROM {table_ref};"

        # ② 问题数据量
        sql_error_count = (
            f"SELECT COUNT(1) AS error_count FROM {table_ref}\n"
            f"WHERE {condition};"
        )

        # ③ 问题数据明细
        field_list = ", ".join([f["name"] for f in self.fields[:10]]) if self.fields else "*"
        sql_detail = (
            f"SELECT {field_list} FROM {table_ref}\n"
            f"WHERE {condition}\n"
            f"LIMIT 100;"
        )

        # ④ 插入错误表
        error_value_expr = f"COALESCE({self.quote(rule.field_name)}, 'NULL')" if rule.field_name else "'N/A'"
        sql_insert = (
            f"INSERT INTO {self.error_table}\n"
            f"  (table_name, field_name, error_type, check_time, error_value)\n"
            f"SELECT\n"
            f"  '{self.table_name}' AS table_name,\n"
            f"  '{rule.field_name}' AS field_name,\n"
            f"  '{rule.rule_name}' AS error_type,\n"
            f"  NOW() AS check_time,\n"
            f"  {error_value_expr} AS error_value\n"
            f"FROM {table_ref}\n"
            f"WHERE {condition};"
        )

        return (
            f"-- ① 全量数据量\n{sql_count}\n"
            f"---\n"
            f"-- ② 问题数据量\n{sql_error_count}\n"
            f"---\n"
            f"-- ③ 问题数据明细\n{sql_detail}\n"
            f"---\n"
            f"-- ④ 插入错误表\n{sql_insert}"
        )

    def format_output(self, rules: list, sql_blocks: list) -> str:
        """格式化输出，包含规则摘要和完整 SQL。"""
        lines = [
            f"-- 数据质量检查 SQL — {self.table_name}",
            f"-- 维度: {self._dimension_name()}",
            f"-- 生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}",
            f"-- 规则数: {len(rules)}",
            f"-- 方言: {self.dialect}",
            "",
        ]
        for i, (rule, sql) in enumerate(zip(rules, sql_blocks), 1):
            lines.append(
                f"-- [{i}] {rule.rule_name} ({rule.field_name})"
            )
            lines.append(sql)
            lines.append("")
            lines.append("=" * 60)
            lines.append("")
        return "\n".join(lines)

    def save_output(self, content: str, subdir: str = "sqls") -> str:
        """将 SQL 保存到 output 目录，返回文件路径。"""
        dir_path = os.path.join(self.output_dir, subdir, self.table_name)
        os.makedirs(dir_path, exist_ok=True)
        file_path = os.path.join(
            dir_path,
            f"{self.dialect}_{self._dimension_name()}.sql"
        )
        with open(file_path, "w", encoding="utf-8") as f:
            f.write(content)
        return file_path

    def get_field_names(self):
        return [f["name"] for f in self.fields]

    def get_field(self, name):
        for f in self.fields:
            if f["name"] == name:
                return f
        return None

    def quote(self, value):
        """根据方言引用标识符。"""
        if self.dialect in ("mysql", "starrocks"):
            return f"`{value}`"
        elif self.dialect == "postgresql":
            return f'"{value}"'
        return value

    def _table_ref(self) -> str:
        """返回带 schema 的表引用。"""
        return f"{self.schema}.{self.table_name}" if self.schema else self.table_name

    def _dimension_name(self) -> str:
        """返回当前 Builder 的维度名（用于输出标识）。"""
        return getattr(self, "DIMENSION", self.__class__.__name__)

    def save_rules_csv(self, rules: list, subdir: str = "rules") -> str:
        """将规则列表保存为 CSV，返回文件路径。"""
        if not rules:
            return ""
        dir_path = os.path.join(self.output_dir, subdir, self.table_name)
        os.makedirs(dir_path, exist_ok=True)
        file_path = os.path.join(
            dir_path,
            f"{self.dialect}_{self._dimension_name()}.csv"
        )
        fieldnames = ["id", "table_name", "field_name", "stage", "dimension",
                       "rule_name", "rule_desc", "check_condition",
                       "threshold", "enabled"]
        with open(file_path, "w", encoding="utf-8", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.writeheader()
            for i, rule in enumerate(rules, 1):
                row = rule.to_csv_row()
                row["id"] = str(i)
                writer.writerow(row)
        return file_path
