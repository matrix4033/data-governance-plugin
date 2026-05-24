---
name: dg-run
version: 1.0.0
description: 当用户要求执行检查、运行质检 SQL、跑检查、dry-run 时使用。触发词：执行检查、run checks、跑检查、执行SQL、dry-run、运行质检。默认 dry-run 模式，需用户确认后才实际执行。调用 dg-builder MCP 的 run_checks 工具。
---

# Data Governance: Execute Checks

## Purpose

Execute generated quality check SQL against the database. Defaults to dry-run mode (show plan only) for safety.

## When This Skill Activates

- "执行检查"
- "run checks"
- "跑一下检查"
- "dry-run"
- "执行 SQL"
- User has converted rules to SQL and wants to run them

## Workflow

### Step 1: Dry-Run (Default)

Always start with dry-run. Show the execution plan first.

**Tool:** `dg-builder` → `run_checks`

```json
{
  "table_name": "T_CUSTOMER",
  "execute": false
}
```

Response includes the execution plan:
```
====================
  检查执行计划 — T_CUSTOMER
  数据源: default
====================

  validity: 12 条规则, 48 条 SQL
  uniqueness: 3 条规则, 12 条 SQL
  ...
                 总计: 39 条规则, 156 条 SQL
  默认模式: 仅展示计划（--execute 才会实际执行）
```

### Step 2: Confirm Before Execute

Present the plan and ask for confirmation:
```
以上是执行计划。确认执行？请提供：
1. db_config 路径（JSON 文件，格式见下文）
2. 数据源名称（默认: default）
```

### Step 3: Execute (After User Confirms)

**Tool:** `dg-builder` → `run_checks`

```json
{
  "table_name": "T_CUSTOMER",
  "execute": true,
  "source": "default",
  "db_config": "config/db_config.json",
  "dialect": "starrocks"
}
```

### db_config.json Format

```json
{
  "default": {
    "host": "127.0.0.1",
    "port": 9030,
    "user": "root",
    "password": "",
    "database": "base_zrr_decode"
  }
}
```

## Notes

- **Always dry-run first** — never execute without user confirmation
- Execution requires pymysql: `pip install pymysql`
- Results are saved to `output/results/<table>/` after execution
- Only ① (total) and ② (errors) SQL are executed by default
- ③ (detail) and ④ (insert error table) require explicit flags
