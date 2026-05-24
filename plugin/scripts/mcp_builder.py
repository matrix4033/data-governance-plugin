#!/usr/bin/env python3
"""Builder CLI MCP Server — 4 工具。

通过环境变量 BUILDER_CONFIG 指向 config.json，BUILDER_DIR 指向 builder/ 包目录。
"""

import csv
import glob
import json
import os
import sys
import traceback

BUILDER_DIR = os.environ.get("BUILDER_DIR", "")
if BUILDER_DIR:
    sys.path.insert(0, os.path.dirname(BUILDER_DIR))

from builder.base import BaseBuilder, Rule
from builder.validity import ValidityBuilder
from builder.uniqueness import UniquenessBuilder
from builder.completeness import CompletenessBuilder
from builder.consistency import ConsistencyBuilder
from builder.accuracy import AccuracyBuilder
from builder.report import build_report, format_text_report, save_report_csv, save_score_csv
from builder.runner import Runner, load_db_config, format_plan, format_results

BUILDERS = {
    "validity": ValidityBuilder,
    "uniqueness": UniquenessBuilder,
    "completeness": CompletenessBuilder,
    "consistency": ConsistencyBuilder,
    "accuracy": AccuracyBuilder,
}

CONFIG_PATH = os.environ.get("BUILDER_CONFIG", "config.json")


def load_config():
    with open(CONFIG_PATH, "r", encoding="utf-8") as f:
        return json.load(f)


# ============================================================
# 工具处理函数
# ============================================================

def handle_generate(params: dict) -> dict:
    """生成质检规则。"""
    table_name = params.get("table_name", "")
    fields = params.get("fields", [])
    schema = params.get("schema", "")
    primary_key = params.get("primary_key")
    dimensions = params.get("dimensions", [])  # 空=全部
    dialect = params.get("dialect", "")

    if not table_name:
        return {"status": "error", "message": "table_name is required"}

    config = load_config()
    if dialect:
        config["dialect"] = dialect

    output_dir = config.get("output_dir", "/tmp/data-governance-output")
    table_output_dir = os.path.join(output_dir, "rules", table_name)
    os.makedirs(table_output_dir, exist_ok=True)

    active_builders = {k: v for k, v in BUILDERS.items() if not dimensions or k in dimensions}
    results = []

    for name, cls in active_builders.items():
        builder = cls(config=config, table_name=table_name, schema=schema, fields=fields, primary_key=primary_key)
        rules = builder.build()
        if not rules:
            continue

        # 保存规则 CSV
        csv_path = builder.save_rules_csv(rules)
        results.append({
            "dimension": name,
            "rule_count": len(rules),
            "csv_path": csv_path,
            "rules": [r.to_csv_row() for r in rules],
        })

    return {
        "status": "ok",
        "data": {
            "table_name": table_name,
            "dimension_count": len(results),
            "total_rules": sum(r["rule_count"] for r in results),
            "dimensions": results,
            "output_dir": table_output_dir,
        },
    }


def handle_convert(params: dict) -> dict:
    """规则 CSV → SQL 转换。"""
    table_name = params.get("table_name", "")
    fields = params.get("fields", [])
    schema = params.get("schema", "")
    primary_key = params.get("primary_key")
    dialect = params.get("dialect", "")

    if not table_name:
        return {"status": "error", "message": "table_name is required"}

    config = load_config()
    if dialect:
        config["dialect"] = dialect

    output_dir = config.get("output_dir", "/tmp/data-governance-output")
    rules_dir = os.path.join(output_dir, "rules", table_name)

    if not os.path.isdir(rules_dir):
        return {"status": "error", "message": f"规则目录不存在: {rules_dir}"}

    csv_files = glob.glob(os.path.join(rules_dir, "*.csv"))
    ctx = BaseBuilder(config, table_name, schema, fields, primary_key)
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

    return {
        "status": "ok",
        "data": {
            "table_name": table_name,
            "dimension_count": len(converted),
            "total_rules": sum(r["rule_count"] for r in converted),
            "dimensions": converted,
        },
    }


def handle_run(params: dict) -> dict:
    """执行检查（默认 dry-run）。"""
    table_name = params.get("table_name", "")
    execute = params.get("execute", False)
    source = params.get("source", "default")
    db_config_path = params.get("db_config", "")
    dialect = params.get("dialect", "")

    if not table_name:
        return {"status": "error", "message": "table_name is required"}

    config = load_config()
    if dialect:
        config["dialect"] = dialect

    output_dir = config.get("output_dir", "/tmp/data-governance-output")
    sql_dir = os.path.join(output_dir, "sqls", table_name)

    runner = Runner(table_name, sql_dir, output_dir, config.get("dialect", "starrocks"))
    sqls = runner.scan_sqls()
    if not sqls:
        return {"status": "error", "message": f"未找到 SQL 文件: {sql_dir}"}

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
        if not db_config_path or not os.path.exists(db_config_path):
            result["data"]["mode"] = "dry-run (no db_config)"
            return result

        db_config = load_db_config(db_config_path)
        db = db_config.get(source)
        if not db:
            return {"status": "error", "message": f"未找到数据源 '{source}'"}

        results = runner.run(sqls, db)
        result["data"]["mode"] = "executed"
        result["data"]["results"] = results
        result["data"]["results_text"] = format_results(results)

        results_dir = runner.save_results(results)
        result["data"]["results_dir"] = results_dir

    return result


def handle_report(params: dict) -> dict:
    """生成质量报告。"""
    table_name = params.get("table_name", "")
    results_dir = params.get("results_dir", "")
    dialect = params.get("dialect", "")

    if not table_name:
        return {"status": "error", "message": "table_name is required"}

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
        return {"status": "error", "message": report["error"]}

    report_text = format_text_report(report)
    csv_path = save_report_csv(report, output_dir)
    score_path = save_score_csv(report, output_dir)

    return {
        "status": "ok",
        "data": {
            "table_name": table_name,
            "report_text": report_text,
            "report": report,
            "csv_path": csv_path,
            "score_path": score_path,
        },
    }


# ============================================================
# 工具注册
# ============================================================

TOOLS = {
    "generate_rules": {
        "description": "生成六性质检规则（validity/uniqueness/completeness/consistency/accuracy）。需提供 table_name 和 fields 列表",
        "params": {
            "table_name": {"type": "string", "required": True},
            "fields": {"type": "array", "required": True},
            "schema": {"type": "string", "required": False},
            "primary_key": {"type": "string", "required": False},
            "dimensions": {"type": "array", "required": False},
            "dialect": {"type": "string", "required": False},
        },
        "handler": handle_generate,
    },
    "convert_rules": {
        "description": "将规则 CSV 转换为可执行 SQL。需先生成规则（generate_rules）",
        "params": {
            "table_name": {"type": "string", "required": True},
            "fields": {"type": "array", "required": False},
            "schema": {"type": "string", "required": False},
            "primary_key": {"type": "string", "required": False},
            "dialect": {"type": "string", "required": False},
        },
        "handler": handle_convert,
    },
    "run_checks": {
        "description": "执行质检 SQL。默认 dry-run（仅展示计划），加 execute=true 实际执行。需 db_config 指定数据库连接文件",
        "params": {
            "table_name": {"type": "string", "required": True},
            "execute": {"type": "boolean", "default": False},
            "source": {"type": "string", "default": "default"},
            "db_config": {"type": "string", "required": False},
            "dialect": {"type": "string", "required": False},
        },
        "handler": handle_run,
    },
    "generate_report": {
        "description": "生成质量报告。可选 results_dir 提供执行结果以计算实际评分",
        "params": {
            "table_name": {"type": "string", "required": True},
            "results_dir": {"type": "string", "required": False},
            "dialect": {"type": "string", "required": False},
        },
        "handler": handle_report,
    },
}


# ============================================================
# JSON-RPC over stdio
# ============================================================

def send_response(msg):
    sys.stdout.write(json.dumps(msg, ensure_ascii=False) + "\n")
    sys.stdout.flush()


def handle_request(request):
    req_id = request.get("id")
    method = request.get("method", "")
    params = request.get("params", {})

    # MCP 标准初始化握手
    if method == "initialize":
        send_response({
            "id": req_id,
            "result": {
                "protocolVersion": params.get("protocolVersion", "2024-11-05"),
                "capabilities": {
                    "tools": {}
                },
                "serverInfo": {
                    "name": "dg-builder",
                    "version": "2.0.0"
                }
            }
        })
        return

    # 初始化完成通知（无需响应）
    if method == "notifications/initialized":
        return

    if method == "tools/list":
        tools_list = []
        for name, tool in TOOLS.items():
            input_schema = {"type": "object", "properties": {}}
            for pname, pinfo in tool["params"].items():
                prop = {"type": pinfo.get("type", "string")}
                if "enum" in pinfo:
                    prop["enum"] = pinfo["enum"]
                if "default" in pinfo:
                    prop["default"] = pinfo["default"]
                if "description" in pinfo:
                    prop["description"] = pinfo["description"]
                input_schema["properties"][pname] = prop
                if pinfo.get("required", False):
                    input_schema.setdefault("required", []).append(pname)
            tools_list.append({
                "name": name,
                "description": tool["description"],
                "inputSchema": input_schema,
            })
        send_response({"id": req_id, "result": {"tools": tools_list}})
        return

    if method in ("tools/call", "mcp.call_tool"):
        tool_name = params.get("name", "")
        tool_args = params.get("arguments", params.get("args", {}))
        tool = TOOLS.get(tool_name)
        if not tool:
            send_response({"id": req_id, "error": {"code": -32601, "message": f"Tool not found: {tool_name}"}})
            return
        try:
            result = tool["handler"](tool_args)
            send_response({
                "id": req_id,
                "result": {
                    "content": [{"type": "text", "text": json.dumps(result, ensure_ascii=False, indent=2)}]
                },
            })
        except Exception as e:
            send_response({
                "id": req_id,
                "error": {"code": -32603, "message": str(e), "data": traceback.format_exc()},
            })
        return

    if method in ("tools/get", "mcp.get_tool"):
        tool_name = params.get("name", "")
        tool = TOOLS.get(tool_name)
        if not tool:
            send_response({"id": req_id, "error": {"code": -32601, "message": f"Tool not found: {tool_name}"}})
            return
        send_response({
            "id": req_id,
            "result": {
                "name": tool_name,
                "description": tool["description"],
                "inputSchema": tool.get("inputSchema", {}),
            },
        })
        return

    send_response({"id": req_id, "error": {"code": -32601, "message": f"Unknown method: {method}"}})


def main():
    buffer = ""
    for line in sys.stdin:
        buffer += line
        while "\n" in buffer:
            msg_line, buffer = buffer.split("\n", 1)
            msg_line = msg_line.strip()
            if not msg_line:
                continue
            try:
                request = json.loads(msg_line)
                handle_request(request)
            except json.JSONDecodeError:
                send_response({"jsonrpc": "2.0", "id": None, "error": {"code": -32700, "message": "Parse error"}})


if __name__ == "__main__":
    main()
