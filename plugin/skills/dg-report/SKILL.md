---
name: dg-report
version: 1.0.0
description: 当用户要求生成质量报告、查看质检结果、评分汇总时使用。触发词：生成报告、质量报告、generate report、评分、看结果、评分汇总、质检报告。调用 dg-builder MCP 的 generate_report 工具。
---

# Data Governance: Quality Report

## Purpose

Generate a comprehensive data quality report showing per-dimension scores, rule pass/fail status, and overall quality assessment.

## When This Skill Activates

- "生成报告"
- "质量报告"
- "generate report"
- "看检查结果"
- "评分汇总"
- User wants to see quality assessment results

## Workflow

### Step 1: Generate Report

**Tool:** `dg-builder` → `generate_report`

```json
{
  "table_name": "T_CUSTOMER",
  "dialect": "starrocks"
}
```

For actual scores (if execution results exist):
```json
{
  "table_name": "T_CUSTOMER",
  "results_dir": "output/results/T_CUSTOMER/",
  "dialect": "starrocks"
}
```

### Step 2: Present Report

The report includes:
- **综合评分** — overall quality score (or "待执行" if no results)
- **各维度详情** — per-dimension scores with progress bars
- **规则明细** — each rule with status (✅ passed / ⚠️ failed / ⏳ pending)
- **分阶段汇总** — aggregated by implementation phase

### Report Modes

**Plan mode** (no results_dir):
```
====================
  数据质量检查报告 — T_CUSTOMER
  [计划模式] 规则已配置，尚未执行检查
====================

规范性: ░░░░░░░░░░░░░░░░░░░░ 待执行 (12 条规则)
唯一性: ░░░░░░░░░░░░░░░░░░░░ 待执行 (3 条规则)
...
```

**Executed mode** (with results_dir):
```
====================
  数据质量检查报告 — T_CUSTOMER
====================

📊 六性综合评分：85.3%
  ██████████████████████████████████████████░░░░░░░░░

规范性: ████████████████░░░░ 83.3% (10/12 条通过)
唯一性: ████████████████████ 100.0% (3/3 条通过)
...
```

### Step 3: Save Files

Reports are saved to:
- `output/reports/<table>/<dialect>_report.csv` — rule-level detail
- `output/reports/<table>/<dialect>_scores.csv` — dimension-level scores

## Notes

- Report works in plan mode (no execution needed to generate)
- Actual scores require execution results from dg-run
- CSV reports can be imported into Excel for further analysis
