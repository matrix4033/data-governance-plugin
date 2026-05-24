---
name: dg-convert
description: This skill should be used when the user asks to "转换规则为 SQL", "转 SQL", "convert rules", "生成 SQL", or wants to convert rule CSV files into executable SQL scripts. Reads CSV from output/rules/ and writes SQL to output/sqls/.
context: fork
model: inherit
---

# Data Governance: CSV to SQL Conversion

## Purpose

Convert previously-generated rule CSV files into executable SQL scripts. Each rule produces 4 SQL segments: total count, error count, detail, and insert into error table.

## When This Skill Activates

- "转换规则为 SQL"
- "转 SQL"
- "convert rules"
- "生成 SQL"
- User has reviewed rule CSV and wants to proceed

## Workflow

### Step 1: Convert Rules

**Tool:** `dg-builder` → `convert_rules`

```json
{
  "table_name": "T_CUSTOMER",
  "dialect": "starrocks"
}
```

Parameters:
- `table_name` — required, which table's rules to convert
- `fields` — optional, field metadata (needed if SQL needs field info)
- `schema` — optional, database schema
- `primary_key` — optional
- `dialect` — optional, defaults to starrocks

### Step 2: Present Results

Show what was generated:
```
表名: T_CUSTOMER
方言: starrocks
已转换维度:
  - validity: 12 条规则 → output/sqls/T_CUSTOMER/starrocks_validity.sql
  - uniqueness: 3 条规则 → output/sqls/T_CUSTOMER/starrocks_uniqueness.sql
  - completeness: 10 条规则 → output/sqls/T_CUSTOMER/starrocks_completeness.sql
  - consistency: 5 条规则 → output/sqls/T_CUSTOMER/starrocks_consistency.sql
  - accuracy: 9 条规则 → output/sqls/T_CUSTOMER/starrocks_accuracy.sql
总计: 39 条规则已转换
```

### SQL Format

Each rule generates 4 SQL segments separated by `---`:
1. `-- ① 全量数据量` — `SELECT COUNT(1) AS total_count`
2. `-- ② 问题数据量` — `SELECT COUNT(1) AS error_count WHERE <condition>`
3. `-- ③ 问题数据明细` — `SELECT <fields> WHERE <condition> LIMIT 100`
4. `-- ④ 插入错误表` — `INSERT INTO error_info ... WHERE <condition>`

### Step 3: Next Steps

After conversion, suggest next actions:
- "运行检查" (run checks — dry run first)
- "生成报告" (generate report)
- "编辑 CSV 后再转换" (if user wants to modify rules)

## Notes

- Only rules with `enabled=true` are converted
- Users can edit CSV files between generate and convert
- The `--execute` flag is NOT passed here — this step only generates SQL files
