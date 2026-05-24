# dg-rules-agent Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 将 dg-rules skill 重构为知识图谱驱动的自主 Agent，生成带 business_justification 的规则 CSV。

**Architecture:** Skill 作为 thin wrapper委派给 Agent，Agent 通过查询 Neo4j 获取字段元数据，调用 generate_rules 生成基础规则，然后为每条规则注解 business_justification，最后调用 rules-reviewer 审查。

**Tech Stack:** Claude Code Agents, MCP (dg-neo4j, dg-builder, context7), Python/FastMCP

---

## File Structure

```
plugin/
├── agents/
│   └── dg-rules-agent.md              # 新增: Agent 定义文件
├── skills/dg-rules/
│   ├── SKILL.md                      # 修改: thin wrapper
│   └── references/
│       └── rules-reference.md        # 修改: 扩展为纯数据表
└── scripts/
    └── mcp_neo4j.py                 # 修改: 新增 get_table_metadata 工具
```

---

## Task 1: 新增 get_table_metadata 工具

**Files:**
- Modify: `plugin/scripts/mcp_neo4j.py` — 新增工具函数（约 80 行）

- [ ] **Step 1: Read current mcp_neo4j.py to understand structure**

Run: `head -60 plugin/scripts/mcp_neo4j.py`

- [ ] **Step 2: Add get_table_metadata function after check_connection**

在 `check_connection` 函数后添加：

```python
@mcp.tool()
def get_table_metadata(table_name: str, schema: str = "") -> str:
    """获取表的完整元数据（字段 + 业务语义 + 关联关系）。

    查询该物理表对应的所有 Field 节点，返回每个字段的：
    - 基本信息：name, type, nullable
    - 业务语义：business_term, data_element, data_standard
    - 图谱关系：is_core_field（通过 DataElement REPRESENTS 推断）, neighbors

    Args:
        table_name: 物理表名
        schema: 数据库 schema（可选）

    Returns:
        JSON: {
          "status": "ok",
          "data": {
            "table_name": "T_CUSTOMER",
            "schema": "base_zrr_decode",
            "fields": [
              {
                "name": "PERSION_ID",
                "type": "varchar",
                "business_term": "自然人唯一标识",
                "data_standard": null,
                "is_core_field": true,
                "ref_table": null,
                "data_element": "DE001",
                "neighbors": [{"name": "T_ORDER", "relationship": "HAS_REFERENCE", "node_id": 123}]
              }
            ]
          }
        }
    """
    check_neo4j_connection()
    driver = get_driver()
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            # 查询物理表及其字段
            cypher = """
            MATCH (pt:PhysicalTable {name: $table_name})
            OPTIONAL MATCH (pt)-[:HAS_FIELD]->(f:Field)
            OPTIONAL MATCH (f)-[:REPRESENTS]->(de:DataElement)
            OPTIONAL MATCH (f)-[r]->(m)
            WHERE labels(m)[0] IN ['PhysicalTable', 'Field']
            RETURN
                pt.name AS table_name,
                pt.schema AS schema,
                f.name AS field_name,
                f.type AS field_type,
                f.nullable AS field_nullable,
                f.business_term AS business_term,
                de.name AS data_element,
                de.data_standard AS data_standard,
                ID(f) AS field_node_id,
                m.name AS neighbor_name,
                labels(m)[0] AS neighbor_type,
                type(r) AS relationship
            ORDER BY f.name
            """
            result = session.run(cypher, table_name=table_name, schema=schema or "")
            records = list(result)

            if not records or records[0].get("field_name") is None:
                return json.dumps({
                    "status": "error",
                    "message": f"表 {table_name} 不存在或没有字段"
                }, ensure_ascii=False)

            # 按字段分组
            field_map = {}
            for r in records:
                fname = r["field_name"]
                if fname not in field_map:
                    field_map[fname] = {
                        "name": fname,
                        "type": r["field_type"] or "varchar",
                        "business_term": r.get("business_term") or "",
                        "data_standard": r.get("data_standard"),
                        "is_core_field": r.get("data_element") is not None,
                        "ref_table": None,
                        "data_element": r.get("data_element"),
                        "neighbors": []
                    }
                if r["neighbor_name"]:
                    field_map[fname]["neighbors"].append({
                        "name": r["neighbor_name"],
                        "relationship": r["relationship"],
                        "node_id": r.get("field_node_id")
                    })

            return json.dumps({
                "status": "ok",
                "data": {
                    "table_name": table_name,
                    "schema": schema or records[0].get("schema") or "",
                    "fields": list(field_map.values())
                }
            }, ensure_ascii=False)
    finally:
        driver.close()
```

- [ ] **Step 3: Test the new tool (dry run)**

Run: `cd plugin && DG_PYTHON=/opt/anaconda3/envs/work-env/bin/python BUILDER_DIR=scripts/builder NEO4J_HOST=127.0.0.1 NEO4J_PORT=7687 NEO4J_USER=neo4j NEO4J_PASSWORD=test python -c "from mcp_neo4j import get_table_metadata; print(get_table_metadata('T_CUSTOMER'))"`

Expected: JSON with table metadata or error about connection

- [ ] **Step 4: Commit**

```bash
git add plugin/scripts/mcp_neo4j.py
git commit -m "feat: add get_table_metadata tool to dg-neo4j MCP"
```

---

## Task 2: 更新 rules-reference.md 为纯数据表

**Files:**
- Modify: `plugin/skills/dg-rules/references/rules-reference.md` — 扩展为纯数据表

- [ ] **Step 1: Read current rules-reference.md**

Run: `cat plugin/skills/dg-rules/references/rules-reference.md`

- [ ] **Step 2: Replace with data-only format**

将内容替换为纯数据表格式，保留原有的规则参考信息但移除说明性文字：

```markdown
# 六维规则参考数据表

## 阈值标准

| 字段类型 | 维度 | 阈值 | 说明 |
|---------|------|------|------|
| 核心字段 | completeness | ≤ 0.05 | 5% 空值率上限 |
| 非核心字段 | completeness | ≤ 0.30 | 30% 空值率上限 |
| 主键 | uniqueness | 0.0 | 不允许重复 |
| 编码字段 | validity | 0.0 | 不允许为空 |
| 测试数据 | accuracy | 0.0 | 不允许存在 |
| 记录数 | accuracy | > 0 | 表不能为空 |

## 规则类型映射

| 字段后缀/特征 | 推荐规则 | 阈值 | 说明 |
|--------------|---------|------|------|
| 主键字段 | PK_UNIQUE | 0.0 | 主键唯一性 |
| `_ID`, `_CODE` 结尾 | CODE_ | 0.0 | 非空检查 |
| `ID_NO`, 身份证 | FORMAT_ID_NO | 0.05 | 18位正则 |
| `ID_NO`, 身份证 | UNIQUE_ID_NO | 0.0 | 唯一性 |
| `GENDER`, 性别 | ENUM_GENDER | 0.0 | GB/T 2261.1 |
| `BIRTH_DATE` | FORMAT_DATE | 0.05 | 日期格式 |
| `PHONE`, 手机 | FORMAT_PHONE | 0.05 | 11位数字 |
| `EMAIL` | FORMAT_EMAIL | 0.05 | 邮箱格式 |
| `CREATE_TIME`, `UPDATE_TIME` | DATE_ORDER | 0.0 | 时序关系 |
| `START_DATE`, `END_DATE` | DATE_ORDER | 0.0 | 起止日期 |
| 文本字段 | TEXT_ | 0.1 | 非空字符串 |
| `_ID`, `_CODE` 结尾 | ID_CODE_VALID | 0.05 | ID/CODE 非空非零 |
| GENDER + ID_NO 共存 | BIZ_LOGIC | 0.0 | 身份证第17位奇偶性 |

## GB/T 标准参考

| 标准号 | 名称 | 关联字段 |
|--------|------|---------|
| GB 11643 | 公民身份号码 | ID_NO |
| GB/T 2261.1 | 性别代码 | GENDER |
| GB/T 3304 | 民族代码 | ETHNICITY |
| WS/T 364.3 | 证件类型代码 | ID_TYPE |
| GB/T 2261.2 | 婚姻状况代码 | MARITAL_STATUS |

## 一致性规则模板

| 规则类型 | 条件模板 | 说明 |
|---------|---------|------|
| 日期时序 | earlier_field IS NOT NULL AND later_field IS NOT NULL AND earlier_field > later_field | 前日期晚于后日期 |
| 字段依赖 | cond_field IS NOT NULL AND cond_field != '' AND dep_field IS NULL OR dep_field = '' | 条件字段有值时依赖字段不为空 |
| 身份证奇偶 | LENGTH(ID_NO)=18 AND (GENDER='1' AND SUBSTRING(ID_NO,17,1)%2=1 OR GENDER='2' AND SUBSTRING(ID_NO,17,1)%2=0) | 性别与第17位奇偶一致 |

## 准确性规则模板

| 规则类型 | 检测条件 | 说明 |
|---------|---------|------|
| 测试数据 | LIKE '%测试%' OR LIKE '%TEST%' OR LIKE '%示例%' OR LIKE '%demo%' OR LIKE '%0000%' | 含测试关键词 |
| ID/CODE 非空 | IS NOT NULL AND != '' AND != '0' | ID/CODE 字段有效性 |
| 记录数量级 | COUNT(1) BETWEEN min AND max | 数量在合理范围 |
```

- [ ] **Step 3: Commit**

```bash
git add plugin/skills/dg-rules/references/rules-reference.md
git commit -m "refactor: convert rules-reference to pure data table format"
```

---

## Task 3: 创建 dg-rules-agent.md

**Files:**
- Create: `plugin/agents/dg-rules-agent.md` — 新增 Agent 定义文件

- [ ] **Step 1: Create the agent definition file**

```markdown
---
name: dg-rules-agent
description: 知识图谱驱动的数据质量规则生成 Agent。接收表名，查询 Neo4j 元数据，
             分析业务语义，生成带 business_justification 的规则 CSV。
tools: [Read, Write, Bash]
---

# dg-rules-agent

你是数据质量规则生成专家。你的任务是基于知识图谱元数据，生成具有业务语义标注的高质量数据质量检查规则。

## 工作流程

### Step 1: 接收任务

从用户输入中提取：
- `table_name`: 物理表名（如 T_CUSTOMER）
- `dialect`: SQL 方言，默认 `starrocks`

### Step 2: 查询知识图谱

调用 `dg-neo4j.get_table_metadata` 获取表的完整字段元数据：

```
get_table_metadata(table_name="T_CUSTOMER")
```

### Step 3: 分析业务语义

对每个字段进行分析：
- `business_term` → 推断字段的业务含义和重要性
- `data_standard` → 关联国家标准（GB/T、WS/T 等）
- `is_core_field` → 是否为核心字段
- `neighbors` → 关联的表和关系（用于跨表规则）

识别跨字段业务关系（如 GENDER + ID_NO 的奇偶性一致性）。

### Step 4: 查阅标准（如适用）

对关联了 `data_standard` 的字段，使用 `context7` 查询标准详情：

```
context7 查询: "GB 11643 公民身份号码 校验规则"
```

记录标准的关键规则，用于补充 `business_justification`。

### Step 5: 生成规则

调用 `dg-builder.generate_rules`：

```
generate_rules(
  table_name="T_CUSTOMER",
  schema="base_zrr_decode",
  fields=[...],  # 从 Step 2 获取的字段信息
  primary_key="PERSION_ID",
  dimensions=[],
  dialect="starrocks"
)
```

### Step 6: 注解 business_justification

读取生成的 CSV，为每条规则添加 `business_justification` 列：

格式：
```
业务来源: 知识图谱字段 <field_name>（<business_term>，<data_standard>）
标准依据: <具体标准条款>
生成理由: <为什么生成这条规则>
```

示例：
```
业务来源: 知识图谱字段 ID_NO（身份证件号码，GB 11643）
标准依据: GB 11643-1999《公民身份号码》第5条规定：公民身份号码为18位
生成理由: 字段在知识图谱中标记为核心字段（is_core_field=true）
```

### Step 7: 保存文件

将扩展 CSV 保存到 `output/rules/<table>/<dialect>_<dimension>.csv`

### Step 8: 调用 rules-reviewer

调用 rules-reviewer agent 对生成的规则进行审查：

```
@rules-reviewer 审查 T_CUSTOMER 的规则质量
```

### Step 9: 返回结果

向用户返回：
- 规则总数和维度分布
- 每条规则的 business_justification 摘要
- rules-reviewer 的审查结论
- CSV 文件路径

## 规则质量标准

每条规则必须满足：

1. **有业务语义**: `business_justification` 能回答"为什么需要这条规则"
2. **有标准依据**: 关联国家标准时必须引用具体条款
3. **阈值合理**: 核心字段阈值 ≤ 0.05，非核心字段阈值 ≤ 0.3
4. **覆盖五性**: 至少包含 validity/uniqueness/completeness 三个维度

## 输出格式

```
## 规则生成结果 — <table_name>

### 概览
- 表名: <table_name>
- 规则总数: <N>
- 维度分布:
  - validity: <N> 条
  - uniqueness: <N> 条
  - completeness: <N> 条
  - consistency: <N> 条
  - accuracy: <N> 条

### 核心字段规则

| 字段 | business_term | 规则数 | 主要规则 |
|------|--------------|--------|---------|
| PERSION_ID | 自然人唯一标识 | 3 | 主键唯一、非空、非空字符串 |

### business_justification 摘要

**ID_NO (身份证件号码)**
- FORMAT_ID_NO: "依据 GB 11643-1999《公民身份号码》，身份证号第18位为校验位..."
- UNIQUE_ID_NO: "字段在知识图谱中标记为核心字段，业务上应唯一..."

### 审查结论
<rules-reviewer 输出>

### 输出文件
- CSV: output/rules/<table>/
```

## 错误处理

- **Neo4j 连接失败**: 友好降级，提示用户检查 Neo4j 服务，规则仍可通过手动传入字段生成
- **context7 查询失败**: 跳过标准查询，`business_justification` 标记"标准查询失败，依据字段名推断"
- **generate_rules 失败**: 返回具体错误信息和可能原因
- **rules-reviewer 无规则可审**: 提示用户先生成规则
```

- [ ] **Step 2: Commit**

```bash
git add plugin/agents/dg-rules-agent.md
git commit -m "feat: add dg-rules-agent for knowledge-graph-driven rule generation"
```

---

## Task 4: 更新 dg-rules SKILL.md 为 thin wrapper

**Files:**
- Modify: `plugin/skills/dg-rules/SKILL.md` — 精简为 thin wrapper

- [ ] **Step 1: Read current SKILL.md**

Run: `cat plugin/skills/dg-rules/SKILL.md`

- [ ] **Step 2: Replace with thin wrapper**

```markdown
---
name: dg-rules
version: 2.0.0
description: 当用户要求生成质检规则、六性质检规则时使用。
             触发词：生成规则、质检规则、六性质检。
             知识图谱驱动，生成带业务语义标注的规则 CSV。
context: fork
agent: dg-rules-agent
---

# Data Governance: Rule Generation

## 做什么

接收表名，查询知识图谱获取字段元数据，生成带 `business_justification` 的质检规则 CSV。

## 输入

- `table_name`（必填）: 物理表名
- `dialect`（可选）: SQL 方言，默认 `starrocks`

## 输出

- **扩展 CSV**: `output/rules/<table>/<dialect>_<dimension>.csv`
  - 新增 `business_justification` 列
- **规则摘要**: 规则总数、维度分布
- **审查报告**: rules-reviewer 质量审查结论

## 错误处理

- Neo4j 不可用: 降级提示
- 生成失败: 返回具体错误信息

## 参考资源（按需 Read）

- `references/rules-reference.md` — 六维规则数据表（阈值、规则类型）
```

- [ ] **Step 3: Commit**

```bash
git add plugin/skills/dg-rules/SKILL.md
git commit -m "refactor: convert dg-rules SKILL.md to thin wrapper"
```

---

## Task 5: 验证完整流程

**Files:**
- Test: `plugin/scripts/mcp_neo4j.py`
- Test: `plugin/agents/dg-rules-agent.md`
- Test: `plugin/skills/dg-rules/SKILL.md`

- [ ] **Step 1: Verify MCP tool list includes get_table_metadata**

Run: `cd plugin && DG_PYTHON=/opt/anaconda3/envs/work-env/bin/python scripts/mcp_neo4j.py & sleep 2; echo '{"jsonrpc":"2.0","id":1,"method":"tools/list"}' | timeout 5 nc -q 1 localhost 6274 2>/dev/null || echo "MCP connection test skipped"`

Expected: Tool list includes "get_table_metadata"

- [ ] **Step 2: Verify agent file is valid markdown**

Run: `head -20 plugin/agents/dg-rules-agent.md`

Expected: YAML frontmatter with name, description, tools

- [ ] **Step 3: Verify SKILL.md has context: fork and agent: dg-rules-agent**

Run: `head -10 plugin/skills/dg-rules/SKILL.md`

Expected: frontmatter contains `context: fork` and `agent: dg-rules-agent`

- [ ] **Step 4: Commit all changes**

```bash
git add -A
git commit -m "feat: complete dg-rules-agent implementation"
```

---

## Self-Review Checklist

1. **Spec coverage:**
   - [ ] get_table_metadata 工具 → Task 1
   - [ ] rules-reference.md 数据表 → Task 2
   - [ ] dg-rules-agent.md → Task 3
   - [ ] SKILL.md thin wrapper → Task 4
   - [ ] 完整流程验证 → Task 5

2. **Placeholder scan:** 无 "TBD"、"TODO"、或 "类似" 的步骤

3. **Type consistency:**
   - [ ] `get_table_metadata` 返回 JSON 格式与设计文档一致
   - [ ] `generate_rules` 调用参数与现有 builder 接口一致
   - [ ] CSV 新增 `business_justification` 列

4. **文件路径正确性:**
   - [ ] `plugin/scripts/mcp_neo4j.py`
   - [ ] `plugin/agents/dg-rules-agent.md`
   - [ ] `plugin/skills/dg-rules/SKILL.md`
   - [ ] `plugin/skills/dg-rules/references/rules-reference.md`
