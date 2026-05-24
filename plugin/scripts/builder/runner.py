"""Runner — 检查 SQL 执行引擎。

解析 SQL 文件，连接数据库执行，保存结果到 output/results/。

用法:
  python builder/cli.py run --table T_CUSTOMER
  python builder/cli.py run --table T_CUSTOMER --execute
  python builder/cli.py run --table T_CUSTOMER --execute --source test
"""

import csv
import json
import os
import re
import sys
from datetime import datetime


# ============================================================
# SQL 解析
# ============================================================

class RuleSQL:
    """一条规则的 4 段 SQL。"""

    def __init__(self, rule_name: str, field_name: str, dimension: str,
                 total_sql: str, error_sql: str, detail_sql: str, insert_sql: str):
        self.rule_name = rule_name
        self.field_name = field_name
        self.dimension = dimension
        self.total_sql = total_sql
        self.error_sql = error_sql
        self.detail_sql = detail_sql
        self.insert_sql = insert_sql


def parse_sql_file(sql_path: str) -> list:
    """解析 SQL 文件，提取所有规则的 4 段 SQL。

    SQL 文件格式：
      -- [N] RULE_NAME (FIELD_NAME)
      -- ① 全量数据量
      SELECT ...;
      ---
      -- ② 问题数据量
      SELECT ...;
      ---
      -- ③ 问题数据明细
      SELECT ...;
      ---
      -- ④ 插入错误表
      INSERT ...;
      =====
    """
    with open(sql_path, "r", encoding="utf-8") as f:
        content = f.read()

    # 从文件名提取维度
    basename = os.path.basename(sql_path)
    dimension = basename.split("_", 1)[-1].replace(".sql", "") if "_" in basename else "unknown"

    # 按规则分隔符拆分
    rule_blocks = re.split(r'\n={5,}\n', content)
    rules = []

    for block in rule_blocks:
        block = block.strip()
        if not block:
            continue

        # 提取规则名 — 匹配 -- [N] RULE_NAME (FIELD_NAME)
        header_match = re.search(r'-- \[\d+\]\s+(\S+)\s*\(([^)]*)\)', block)
        if not header_match:
            continue

        rule_name = header_match.group(1)
        field_name = header_match.group(2).strip()

        # 按 --- 分割 4 段
        segments = re.split(r'\n---\n', block)
        if len(segments) < 4:
            continue

        def extract_sql(seg: str) -> str:
            """从段中提取 SQL（跳过注释行）。"""
            lines = seg.strip().split("\n")
            sql_lines = [l for l in lines if not l.strip().startswith("--")]
            return " ".join(l.strip() for l in sql_lines if l.strip())

        total_sql = extract_sql(segments[0])
        error_sql = extract_sql(segments[1])
        detail_sql = extract_sql(segments[2])
        insert_sql = extract_sql(segments[3])

        rules.append(RuleSQL(
            rule_name=rule_name,
            field_name=field_name,
            dimension=dimension,
            total_sql=total_sql,
            error_sql=error_sql,
            detail_sql=detail_sql,
            insert_sql=insert_sql,
        ))

    return rules


# ============================================================
# 数据库连接
# ============================================================

DB_CONFIG_TEMPLATE = """{
  "default": {
    "host": "127.0.0.1",
    "port": 9030,
    "user": "root",
    "password": "",
    "database": "base_zrr_decode"
  },
  "test": {
    "host": "127.0.0.1",
    "port": 9030,
    "user": "root",
    "password": "",
    "database": "base_zrr_decode_test"
  }
}
"""


def load_db_config(path: str) -> dict:
    """加载数据库配置。"""
    if not os.path.exists(path):
        print(f"[错误] 数据库配置文件不存在: {path}", file=sys.stderr)
        print(f"[提示] 请创建 {path}，参考以下模板：", file=sys.stderr)
        print(DB_CONFIG_TEMPLATE, file=sys.stderr)
        sys.exit(1)
    with open(path, "r", encoding="utf-8") as f:
        return json.load(f)


def execute_sql(sql: str, db_config: dict) -> tuple:
    """执行单条 SQL，返回 (success, result)。

    成功时 result 为查询结果列表 [{col: value}, ...]（SELECT）或影响行数。
    失败时 result 为错误信息。
    """
    if not sql.strip().rstrip(";"):
        return True, []

    try:
        import pymysql
    except ImportError:
        return False, "请安装 pymysql: pip install pymysql"

    conn = None
    try:
        conn = pymysql.connect(
            host=db_config.get("host", "127.0.0.1"),
            port=int(db_config.get("port", 9030)),
            user=db_config.get("user", "root"),
            password=db_config.get("password", ""),
            database=db_config.get("database", ""),
            charset="utf8mb4",
            connect_timeout=10,
        )

        is_select = sql.strip().upper().startswith("SELECT")
        with conn.cursor() as cursor:
            cursor.execute(sql)
            if is_select:
                cols = [desc[0] for desc in cursor.description]
                rows = cursor.fetchall()
                result = [dict(zip(cols, row)) for row in rows]
            else:
                conn.commit()
                result = {"affected_rows": cursor.rowcount}

        return True, result

    except Exception as e:
        return False, str(e)

    finally:
        if conn:
            conn.close()


# ============================================================
# 运行器
# ============================================================

class Runner:
    """检查 SQL 运行器。"""

    def __init__(self, table_name: str, sql_dir: str, output_dir: str,
                 dialect: str = "starrocks"):
        self.table_name = table_name
        self.sql_dir = sql_dir
        self.output_dir = output_dir
        self.dialect = dialect

    def scan_sqls(self) -> dict:
        """扫描并解析所有 SQL 文件，返回 {dimension: [RuleSQL, ...]}。"""
        if not os.path.isdir(self.sql_dir):
            return {}

        result = {}
        for fname in sorted(os.listdir(self.sql_dir)):
            if not fname.endswith(".sql"):
                continue
            if self.dialect and not fname.startswith(self.dialect):
                continue
            path = os.path.join(self.sql_dir, fname)
            rules = parse_sql_file(path)
            if rules:
                dim = rules[0].dimension
                result[dim] = rules
        return result

    def build_plan(self, sqls: dict) -> list:
        """构建执行计划。"""
        plan = []
        for dim, rules in sqls.items():
            plan.append({
                "dimension": dim,
                "rule_count": len(rules),
                "sql_count": len(rules) * 4,
            })
        return plan

    def run(self, sqls: dict, db_config: dict, detail: bool = False,
            insert: bool = False) -> dict:
        """实际执行 SQL，返回结果字典。

        返回格式：
          {dimension: [(rule_name, {total, errors, detail_rows, insert_ok}), ...]}
        """
        if not db_config:
            return {}

        results = {}
        for dim, rules in sqls.items():
            dim_results = []
            for rule in rules:
                rule_result = {"rule_name": rule.rule_name,
                               "field_name": rule.field_name,
                               "total": None, "errors": None,
                               "detail_rows": None, "insert_ok": None}

                # ① 全量数据量
                ok, res = execute_sql(rule.total_sql, db_config)
                if ok and res and len(res) > 0:
                    rule_result["total"] = res[0].get("total_count", 0)

                # ② 问题数据量
                ok, res = execute_sql(rule.error_sql, db_config)
                if ok and res and len(res) > 0:
                    rule_result["errors"] = res[0].get("error_count", 0)

                # ③ 明细（可选）
                if detail and rule.detail_sql:
                    ok, res = execute_sql(rule.detail_sql, db_config)
                    rule_result["detail_rows"] = res if ok else None

                # ④ 插入错误表（可选）
                if insert and rule.insert_sql:
                    ok, res = execute_sql(rule.insert_sql, db_config)
                    rule_result["insert_ok"] = ok

                dim_results.append(rule_result)

            results[dim] = dim_results

        return results

    def save_results(self, results: dict):
        """保存执行结果到 output/results/<table>/。"""
        dir_path = os.path.join(self.output_dir, "results", self.table_name)
        os.makedirs(dir_path, exist_ok=True)

        for dim, dim_results in results.items():
            path = os.path.join(dir_path, f"{self.dialect}_{dim}.csv")
            with open(path, "w", encoding="utf-8", newline="") as f:
                writer = csv.DictWriter(f, fieldnames=[
                    "table_name", "rule_name", "field_name",
                    "total_count", "error_count", "sample_data",
                ])
                writer.writeheader()
                for r in dim_results:
                    sample = ""
                    if r.get("detail_rows"):
                        sample = str(r["detail_rows"][:3])
                    writer.writerow({
                        "table_name": self.table_name,
                        "rule_name": r["rule_name"],
                        "field_name": r.get("field_name", ""),
                        "total_count": r["total"] or 0,
                        "error_count": r["errors"] or 0,
                        "sample_data": sample,
                    })

        return dir_path


def format_plan(plan: list, table_name: str, source: str) -> str:
    """格式化执行计划文本。"""
    lines = []
    lines.append("=" * 50)
    lines.append(f"  检查执行计划 — {table_name}")
    lines.append(f"  数据源: {source}")
    lines.append("=" * 50)

    total_rules = 0
    total_sqls = 0
    for item in plan:
        total_rules += item["rule_count"]
        total_sqls += item["sql_count"]
        lines.append(f"\n  📁 {item['dimension']}")
        lines.append(f"     规则数: {item['rule_count']}")
        lines.append(f"     SQL 数: {item['sql_count']}")

    lines.append(f"\n{'─' * 50}")
    lines.append(f"  总计: {total_rules} 条规则, {total_sqls} 条 SQL")
    lines.append(f"  默认模式: 仅展示计划（--execute 才会实际执行）")
    lines.append("")

    return "\n".join(lines)


def format_results(results: dict) -> str:
    """格式化执行结果文本。"""
    lines = []
    lines.append("=" * 50)
    lines.append("  检查执行结果")
    lines.append("=" * 50)

    total_errors = 0
    for dim, dim_results in results.items():
        lines.append(f"\n  📁 {dim}")
        for r in dim_results:
            err = r.get("errors") or 0
            tot = r.get("total") or 0
            status = "✅" if err == 0 else "⚠️"
            lines.append(f"    {status} {r['rule_name']}: "
                         f"错误 {err} / 总量 {tot}")
            total_errors += err

    lines.append(f"\n{'─' * 50}")
    lines.append(f"  发现 {total_errors} 条问题数据")
    lines.append("")

    return "\n".join(lines)
