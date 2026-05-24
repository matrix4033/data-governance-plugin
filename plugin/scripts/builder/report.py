"""ReportBuilder — 质量报告生成器。

读取规则 CSV，生成六性评分报告。
支持两种模式：
- planned（默认）: 仅基于规则配置生成计划报告
- executed: 读取执行结果，生成实际评分报告

用法:
  python builder/cli.py report --table T_CUSTOMER
  python builder/cli.py report --table T_CUSTOMER --results output/results/T_CUSTOMER/
"""

import csv
import os
from datetime import datetime
from collections import OrderedDict


# 维度元数据：显示名、阶段、排序
DIMENSIONS = OrderedDict([
    ("validity",     {"label": "规范性 (Validity)",   "stage": 1}),
    ("uniqueness",   {"label": "唯一性 (Uniqueness)", "stage": 1}),
    ("completeness", {"label": "完整性 (Completeness)", "stage": 2}),
    ("consistency",  {"label": "一致性 (Consistency)",  "stage": 2}),
    ("accuracy",     {"label": "准确性 (Accuracy)",     "stage": 3}),
    ("timeliness",   {"label": "及时性 (Timeliness)",   "stage": None}),
])


def parse_rules_csv(csv_path: str) -> list:
    """解析规则 CSV，返回规则字典列表。"""
    rules = []
    with open(csv_path, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            if row.get("enabled", "true").strip().lower() != "true":
                continue
            rules.append(row)
    return rules


def load_results(results_dir: str) -> dict:
    """加载执行结果。返回 {dimension: {rule_name: {total, errors}}} 的嵌套字典。

    结果文件格式（CSV）：
      table_name, rule_name, total_count, error_count, sample_data
    """
    if not results_dir or not os.path.isdir(results_dir):
        return {}

    results = {}
    for fname in sorted(os.listdir(results_dir)):
        if not fname.endswith(".csv"):
            continue
        path = os.path.join(results_dir, fname)
        dim = fname.replace(".csv", "").split("_", 1)[-1] if "_" in fname else fname
        dim_results = {}
        with open(path, "r", encoding="utf-8") as f:
            reader = csv.DictReader(f)
            for row in reader:
                try:
                    dim_results[row.get("rule_name", "")] = {
                        "total": int(row.get("total_count", 0)),
                        "errors": int(row.get("error_count", 0)),
                        "sample": row.get("sample_data", ""),
                    }
                except (ValueError, KeyError):
                    pass
        if dim_results:
            results[dim] = dim_results
    return results


def calc_dimension_score(rules: list, results: dict) -> dict:
    """计算单个维度的评分。"""
    total_rules = len(rules)
    executed = 0
    passed = 0
    detail = []

    for r in rules:
        rname = r.get("rule_name", "")
        fname = r.get("field_name", "")
        desc = r.get("rule_desc", "")
        threshold = float(r.get("threshold", 0)) if r.get("threshold") else None

        result = results.get(rname) if results else None
        if result:
            executed += 1
            err = result["errors"]
            tot = result["total"]
            pass_rate = max(0, 1 - (err / tot)) if tot > 0 else 1.0
            if err == 0:
                passed += 1
            status = "✅" if err == 0 else "⚠️"
            detail.append({
                "rule_name": rname,
                "field_name": fname,
                "desc": desc,
                "threshold": threshold,
                "total": tot,
                "errors": err,
                "pass_rate": pass_rate,
                "status": status,
            })
        else:
            detail.append({
                "rule_name": rname,
                "field_name": fname,
                "desc": desc,
                "threshold": threshold,
                "total": None,
                "errors": None,
                "pass_rate": None,
                "status": "⏳",
            })

    score = (passed / executed * 100) if executed > 0 else None
    return {
        "total_rules": total_rules,
        "executed": executed,
        "passed": passed,
        "score": score,
        "detail": detail,
    }


def build_report(table_name: str, rules_dir: str, results_dir: str = None,
                 dialect: str = "starrocks") -> dict:
    """构建完整报告。"""
    # 扫描规则 CSV
    if not os.path.isdir(rules_dir):
        return {"error": f"规则目录不存在: {rules_dir}"}

    loaded_results = load_results(results_dir) if results_dir else {}

    dimensions = []
    total_rules = 0

    for dim_name, dim_meta in DIMENSIONS.items():
        csv_path = os.path.join(rules_dir, f"{dialect}_{dim_name}.csv")
        if not os.path.exists(csv_path):
            continue

        rules = parse_rules_csv(csv_path)
        if not rules:
            continue

        dim_results = loaded_results.get(dim_name, {})
        score_info = calc_dimension_score(rules, dim_results)

        total_rules += len(rules)
        dimensions.append({
            "name": dim_name,
            "label": dim_meta["label"],
            "stage": dim_meta["stage"],
            "rules": rules,
            "score": score_info,
        })

    # 综合评分
    executed_dimensions = [d for d in dimensions if d["score"]["score"] is not None]
    overall = (
        sum(d["score"]["score"] for d in executed_dimensions) / len(executed_dimensions)
        if executed_dimensions else None
    )

    return {
        "table_name": table_name,
        "generated_at": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
        "dialect": dialect,
        "total_rules": total_rules,
        "overall_score": overall,
        "dimensions": dimensions,
        "has_results": len(loaded_results) > 0,
    }


def format_text_report(report: dict) -> str:
    """格式化为文本报告（stdout 输出）。"""
    if "error" in report:
        return f"[错误] {report['error']}"

    lines = []
    lines.append("=" * 50)
    lines.append(f"  数据质量检查报告 — {report['table_name']}")
    lines.append(f"  生成时间: {report['generated_at']}")
    if not report["has_results"]:
        lines.append(f"  [计划模式] 规则已配置，尚未执行检查")
    lines.append("=" * 50)

    # 综合评分
    overall = report["overall_score"]
    if overall is not None:
        bar_len = 50
        filled = int(overall / 100 * bar_len)
        bar = "█" * filled + "░" * (bar_len - filled)
        lines.append(f"\n📊 六性综合评分：{overall:.1f}%")
        lines.append(f"  {bar}")
    else:
        lines.append(f"\n📊 六性综合评分：待执行")
    lines.append("")

    # 各维度
    for d in report["dimensions"]:
        score = d["score"]
        lines.append(f"  {d['label']}")
        if score["score"] is not None:
            bar_len = 20
            filled = int(score["score"] / 100 * bar_len)
            bar = "█" * filled + "░" * (bar_len - filled)
            lines.append(f"    {bar} {score['score']:.1f}%  "
                         f"({score['passed']}/{score['executed']} 条通过)")
        else:
            lines.append(f"    {'░' * 20} 待执行  "
                         f"(共 {score['total_rules']} 条规则)")

        # 规则详情
        for idx, rule in enumerate(score["detail"], 1):
            fname = rule["field_name"] or "(全表)"
            status = rule["status"]
            lines.append(f"    {status} {idx}. {rule['rule_name']} ({fname})")
            if rule["errors"] is not None:
                lines.append(f"         错误: {rule['errors']} / 总量: {rule['total']}")
            elif rule["threshold"] is not None:
                lines.append(f"         阈值: {rule['threshold']*100:.0f}%")

        lines.append("")

    # 各阶段汇总
    stages = {}
    for d in report["dimensions"]:
        stage = d["stage"]
        if stage is None:
            continue
        stages.setdefault(stage, {"dimensions": [], "rules": 0, "passed": 0, "executed": 0})
        stages[stage]["dimensions"].append(d["label"])
        stages[stage]["rules"] += d["score"]["total_rules"]
        stages[stage]["passed"] += d["score"]["passed"]
        stages[stage]["executed"] += d["score"]["executed"]

    lines.append("=" * 50)
    lines.append("  分阶段汇总")
    lines.append("=" * 50)
    for stage_num in sorted(stages.keys()):
        s = stages[stage_num]
        stage_label = {1: "阶段一：规范性 + 唯一性", 2: "阶段二：完整性 + 一致性",
                       3: "阶段三：准确性"}.get(stage_num, f"阶段{stage_num}")
        lines.append(f"\n  📁 {stage_label}")
        lines.append(f"     规则数: {s['rules']}")
        if s["executed"] > 0:
            rate = s["passed"] / s["executed"] * 100 if s["executed"] > 0 else 0
            lines.append(f"     通过率: {rate:.1f}% ({s['passed']}/{s['executed']})")
        else:
            lines.append(f"     状态: 待执行")

    lines.append("")
    return "\n".join(lines)


def save_report_csv(report: dict, output_dir: str):
    """保存报告 CSV 到 output/reports/<table>/。"""
    table = report["table_name"]
    dir_path = os.path.join(output_dir, "reports", table)
    os.makedirs(dir_path, exist_ok=True)

    rows = []
    for d in report["dimensions"]:
        for rule in d["score"]["detail"]:
            rows.append({
                "table_name": table,
                "stage": d["stage"] or "",
                "dimension": d["name"],
                "rule_name": rule["rule_name"],
                "field_name": rule["field_name"],
                "rule_desc": rule["desc"],
                "total_count": rule["total"] if rule["total"] is not None else "",
                "error_count": rule["errors"] if rule["errors"] is not None else "",
                "threshold": rule["threshold"] if rule["threshold"] is not None else "",
                "status": "pass" if rule["errors"] == 0 else "fail" if rule["errors"] else "pending",
            })

    if not rows:
        return ""

    path = os.path.join(dir_path, f"{report['dialect']}_report.csv")
    fieldnames = [
        "table_name", "stage", "dimension", "rule_name", "field_name",
        "rule_desc", "total_count", "error_count", "threshold", "status",
    ]
    with open(path, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)

    return path


def save_score_csv(report: dict, output_dir: str):
    """保存评分摘要 CSV。"""
    table = report["table_name"]
    dir_path = os.path.join(output_dir, "reports", table)
    os.makedirs(dir_path, exist_ok=True)

    rows = []
    for d in report["dimensions"]:
        rows.append({
            "dimension": d["label"],
            "stage": d["stage"] or "",
            "total_rules": d["score"]["total_rules"],
            "executed": d["score"]["executed"],
            "passed": d["score"]["passed"],
            "score": f"{d['score']['score']:.1f}%" if d["score"]["score"] is not None else "pending",
        })

    # 综合评分
    overall = report.get("overall_score")
    rows.append({
        "dimension": "综合评分",
        "stage": "",
        "total_rules": report["total_rules"],
        "executed": sum(d["score"]["executed"] for d in report["dimensions"]),
        "passed": sum(d["score"]["passed"] for d in report["dimensions"]),
        "score": f"{overall:.1f}%" if overall is not None else "pending",
    })

    path = os.path.join(dir_path, f"{report['dialect']}_scores.csv")
    fieldnames = ["dimension", "stage", "total_rules", "executed", "passed", "score"]
    with open(path, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)

    return path
