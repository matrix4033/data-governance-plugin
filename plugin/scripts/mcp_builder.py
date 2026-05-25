#!/usr/bin/env python3
"""Builder CLI MCP Server — 4 工具。

使用 FastMCP SDK 实现。
依赖: pip install mcp
通过环境变量 BUILDER_CONFIG 指向 config.json，BUILDER_DIR 指向 builder/ 包目录。
"""

import csv
import glob
import json
import os
import sys
import traceback

from mcp.server.fastmcp import FastMCP

# 初始化 FastMCP 服务器
mcp = FastMCP("dg-builder")

# Builder 路径配置
BUILDER_DIR = os.environ.get("BUILDER_DIR", "")
if BUILDER_DIR:
    sys.path.insert(0, os.path.dirname(BUILDER_DIR))

from builder.base import BaseBuilder, Rule
from builder.validity_enhanced import ValidityBuilderEnhanced
from builder.uniqueness import UniquenessBuilder
from builder.completeness_enhanced import CompletenessBuilderEnhanced
from builder.consistency_enhanced import ConsistencyBuilderEnhanced
from builder.accuracy import AccuracyBuilder
from builder.report import build_report, format_text_report, save_report_csv, save_score_csv
from builder.runner import Runner, load_db_config, format_plan, format_results

# 增强版 Builder：基于业务语义推断规则类型
BUILDERS = {
    "validity": ValidityBuilderEnhanced,
    "uniqueness": UniquenessBuilder,
    "completeness": CompletenessBuilderEnhanced,
    "consistency": ConsistencyBuilderEnhanced,
    "accuracy": AccuracyBuilder,
}

CONFIG_PATH = os.environ.get("BUILDER_CONFIG", "config.json")


def load_config():
    with open(CONFIG_PATH, "r", encoding="utf-8") as f:
        return json.load(f)


@mcp.tool()
def generate_rules(
    table_name: str,
    fields: list,
    schema: str = "",
    primary_key: str = "",
    dimensions: list = None,
    dialect: str = ""
) -> str:
    """生成六性质检规则（validity/uniqueness/completeness/consistency/accuracy）。

    Args:
        table_name: 表名
        fields: 字段列表
        schema: 数据库 schema
        primary_key: 主键字段名
        dimensions: 要生成规则的维度列表，为空则生成全部
        dialect: SQL 方言（starrocks/mysql/postgresql）
    """
    if not table_name:
        return json.dumps({"status": "error", "message": "table_name is required"}, indent=2, ensure_ascii=False)

    config = load_config()
    if dialect:
        config["dialect"] = dialect

    output_dir = config.get("output_dir", "/tmp/data-governance-output")
    table_output_dir = os.path.join(output_dir, "rules", table_name)
    os.makedirs(table_output_dir, exist_ok=True)

    if dimensions is None:
        dimensions = []
    active_builders = {k: v for k, v in BUILDERS.items() if not dimensions or k in dimensions}
    results = []

    for name, cls in active_builders.items():
        builder = cls(config=config, table_name=table_name, schema=schema, fields=fields, primary_key=primary_key)
        rules = builder.build()
        if not rules:
            continue

        csv_path = builder.save_rules_csv(rules)
        results.append({
            "dimension": name,
            "rule_count": len(rules),
            "csv_path": csv_path,
            "rules": [r.to_csv_row() for r in rules],
        })

    return json.dumps({
        "status": "ok",
        "data": {
            "table_name": table_name,
            "dimension_count": len(results),
            "total_rules": sum(r["rule_count"] for r in results),
            "dimensions": results,
            "output_dir": table_output_dir,
        },
    }, indent=2, ensure_ascii=False)


@mcp.tool()
def convert_rules(
    table_name: str,
    fields: list = None,
    schema: str = "",
    primary_key: str = "",
    dialect: str = ""
) -> str:
    """将规则 CSV 转换为可执行 SQL。需先生成规则（generate_rules）。

    Args:
        table_name: 表名
        fields: 字段列表
        schema: 数据库 schema
        primary_key: 主键字段名
        dialect: SQL 方言
    """
    if not table_name:
        return json.dumps({"status": "error", "message": "table_name is required"}, indent=2, ensure_ascii=False)

    config = load_config()
    if dialect:
        config["dialect"] = dialect

    output_dir = config.get("output_dir", "/tmp/data-governance-output")
    rules_dir = os.path.join(output_dir, "rules", table_name)

    if not os.path.isdir(rules_dir):
        return json.dumps({"status": "error", "message": f"规则目录不存在: {rules_dir}"}, indent=2, ensure_ascii=False)

    csv_files = glob.glob(os.path.join(rules_dir, "*.csv"))
    ctx = BaseBuilder(config, table_name, schema, fields or [], primary_key)
    ctx.output_dir = output_dir
    ctx.dialect = config.get("dialect", "starrocks")

    sql_dir = os.path.join(output_dir, "sqls", table_name)
    os.makedirs(sql_dir, exist_ok=True)

    converted = []
    for csv_path in sorted(csv_files):
        basename = os.path.basename(csv_path)
        dimension = basename.replace(".csv", "").split("_", 1)[-1] if "_" in basename else "unknown"
        rules = []
        with open(csv_path, "r", encoding="utf-8") as f:
            reader = csv.DictReader(f)
            for row in reader:
                if row.get("enabled", "true").strip().lower() == "true":
                    rules.append(Rule.from_csv_row(row))
        if not rules:
            continue

        ctx.DIMENSION = dimension
        sql_blocks = [ctx.generate_sql(r) for r in rules]
        output = ctx.format_output(rules, sql_blocks)
        sql_path = ctx.save_output(output, subdir="sqls")

        converted.append({
            "dimension": dimension,
            "rule_count": len(rules),
            "sql_path": sql_path,
        })

    return json.dumps({
        "status": "ok",
        "data": {
            "table_name": table_name,
            "dimension_count": len(converted),
            "total_rules": sum(r["rule_count"] for r in converted),
            "dimensions": converted,
        },
    }, indent=2, ensure_ascii=False)


@mcp.tool()
def run_checks(
    table_name: str,
    execute: bool = False,
    source: str = "default",
    db_config: str = "",
    dialect: str = ""
) -> str:
    """执行质检 SQL。默认 dry-run（仅展示计划），加 execute=true 实际执行。

    Args:
        table_name: 表名
        execute: 是否实际执行（默认 False 仅 dry-run）
        source: 数据源名称
        db_config: 数据库配置文件路径
        dialect: SQL 方言
    """
    if not table_name:
        return json.dumps({"status": "error", "message": "table_name is required"}, indent=2, ensure_ascii=False)

    config = load_config()
    if dialect:
        config["dialect"] = dialect

    output_dir = config.get("output_dir", "/tmp/data-governance-output")
    sql_dir = os.path.join(output_dir, "sqls", table_name)

    runner = Runner(table_name, sql_dir, output_dir, config.get("dialect", "starrocks"))
    sqls = runner.scan_sqls()
    if not sqls:
        return json.dumps({"status": "error", "message": f"未找到 SQL 文件: {sql_dir}"}, indent=2, ensure_ascii=False)

    plan = runner.build_plan(sqls)
    plan_text = format_plan(plan, table_name, source)

    result = {
        "status": "ok",
        "data": {
            "table_name": table_name,
            "mode": "dry-run",
            "plan_text": plan_text,
            "plan": plan,
        },
    }

    if execute:
        if not db_config or not os.path.exists(db_config):
            result["data"]["mode"] = "dry-run (no db_config)"
            return json.dumps(result, indent=2, ensure_ascii=False)

        db_config_data = load_db_config(db_config)
        db = db_config_data.get(source)
        if not db:
            return json.dumps({"status": "error", "message": f"未找到数据源 '{source}'"}, indent=2, ensure_ascii=False)

        results = runner.run(sqls, db)
        result["data"]["mode"] = "executed"
        result["data"]["results"] = results
        result["data"]["results_text"] = format_results(results)

        results_dir = runner.save_results(results)
        result["data"]["results_dir"] = results_dir

    return json.dumps(result, indent=2, ensure_ascii=False)


@mcp.tool()
def generate_report(
    table_name: str,
    results_dir: str = "",
    dialect: str = ""
) -> str:
    """生成质量报告。可选 results_dir 提供执行结果以计算实际评分。

    Args:
        table_name: 表名
        results_dir: 执行结果目录
        dialect: SQL 方言
    """
    if not table_name:
        return json.dumps({"status": "error", "message": "table_name is required"}, indent=2, ensure_ascii=False)

    config = load_config()
    if dialect:
        config["dialect"] = dialect

    output_dir = config.get("output_dir", "/tmp/data-governance-output")
    rules_dir = os.path.join(output_dir, "rules", table_name)

    report = build_report(
        table_name, rules_dir,
        results_dir=results_dir if results_dir else None,
        dialect=config.get("dialect", "starrocks"),
    )

    if "error" in report:
        return json.dumps({"status": "error", "message": report["error"]}, indent=2, ensure_ascii=False)

    report_text = format_text_report(report)
    csv_path = save_report_csv(report, output_dir)
    score_path = save_score_csv(report, output_dir)

    return json.dumps({
        "status": "ok",
        "data": {
            "table_name": table_name,
            "report_text": report_text,
            "report": report,
            "csv_path": csv_path,
            "score_path": score_path,
        },
    }, indent=2, ensure_ascii=False)


if __name__ == "__main__":
    mcp.run(transport="stdio")
