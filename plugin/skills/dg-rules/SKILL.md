---
name: dg-rules
version: 1.0.0
description: 当用户要求生成质检规则、六性质检规则、规范性检查、唯一性检查时使用。触发词：生成规则、质检规则、run quality rules、规范性检查、唯一性检查、完整性检查、一致性检查、准确性检查、跑一遍六性。调用 dg-builder MCP 的 generate_rules 工具。
---

# Data Governance: Rule Generation

## Purpose

Generate data quality check rules across 5 dimensions (validity, uniqueness, completeness, consistency, accuracy). Rules are saved as CSV files for review before SQL conversion.

## When This Skill Activates

- "给 T_CUSTOMER 生成规则"
- "跑规范性检查"
- "生成六性质检规则"
- "run quality rules on the customer table"
- User wants to start the data quality workflow

## Workflow

### Step 1: Get Table Metadata

Before generating rules, get the table's field information via dg-query skills. The user must provide or you must first query:

- `table_name` — the physical table name
- `fields` — list of fields with name, type, and optionally business_term
- `schema` — database schema (optional)
- `primary_key` — primary key field (optional)

Call `dg-neo4j` → `get_node_details` to get fields if metadata is in Neo4j.

### Step 2: Generate Rules

**Tool:** `dg-builder` → `generate_rules`

```json
{
  "table_name": "T_CUSTOMER",
  "schema": "base_zrr_decode",
  "fields": [
    {"name": "PERSION_ID", "type": "varchar", "business_term": "自然人唯一标识"},
    {"name": "ID_NO", "type": "varchar", "business_term": "身份证件号码"}
  ],
  "primary_key": "PERSION_ID",
  "dimensions": [],
  "dialect": "starrocks"
}
```

- `dimensions: []` = generate all 5 dimensions
- `dimensions: ["validity", "uniqueness"]` = generate specific dimensions only
- Rules are saved as CSV files in `output/rules/<table>/`

### Step 3: Present Results to User

Show a summary:
```
表名: T_CUSTOMER
规则总数: 39
维度分布:
  - validity: 12 条
  - uniqueness: 3 条
  - completeness: 10 条
  - consistency: 5 条
  - accuracy: 9 条
CSV 已保存至: output/rules/T_CUSTOMER/
```

**Important:** Do NOT auto-convert to SQL. Wait for user confirmation ("转换规则为 SQL" or "convert").
**Important:** Do NOT auto-run checks. Wait for user instruction.

## Notes

- Rules are deterministic (no LLM calls) — generated from field metadata
- Users can edit CSV files (enable/disable rules, adjust thresholds) before convert
- Each rule has: id, table_name, field_name, stage, dimension, rule_name, rule_desc, check_condition, threshold, enabled

## 附加资源

### 参考文件
- **`references/rules-reference.md`** — 各维度规则详解、命名规范、阈值参考

### Agent
- **`rules-reviewer`** — 规则质量审查 agent，生成后调用"审查规则"触发
