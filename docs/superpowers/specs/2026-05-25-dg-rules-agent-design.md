# dg-rules-agent 设计文档

## 概述

将 dg-rules 从确定性 skill 重构为**知识图谱驱动的自主 Agent**。

- **输入**: 表名（+ 可选 dialect）
- **核心流程**: 查询 Neo4j 元数据 → 分析业务语义 → 生成规则 → 注解业务依据 → 审查规则
- **输出**: 带 `business_justification` 列的扩展 CSV 规则文件
- **辅助输出**: 规则审查报告

## 架构

```
用户: "生成 T_CUSTOMER 的质检规则"
        │
        ▼
┌──────────────────────────────────────┐
│  dg-rules skill (thin wrapper)        │
│  触发词: 生成规则、质检规则、六性质检  │
│  context: fork → 委派给 agent          │
└──────────────────┬───────────────────┘
                   │
                   ▼
┌──────────────────────────────────────┐
│  dg-rules-agent                       │
│  mcpServers: [dg-neo4j, dg-builder, │
│               context7]               │
│  tools: [Read, Write, Bash]          │
└──────────────────────────────────────┘
```

## Agent 工作流程

### Step 1: 接收任务

接收表名 `T_CUSTOMER`，确认 dialect（如未指定则默认 `starrocks`）。

### Step 2: 查询知识图谱

调用 `dg-neo4j.get_table_metadata(T_CUSTOMER)`，获取：

```json
{
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
      "neighbors": [
        {"name": "T_ORDER", "relationship": "HAS_REFERENCE"}
      ]
    },
    {
      "name": "ID_NO",
      "type": "varchar",
      "business_term": "身份证件号码",
      "data_standard": "GB 11643",
      "is_core_field": true,
      "ref_table": null,
      "neighbors": []
    },
    {
      "name": "GENDER",
      "type": "varchar",
      "business_term": "性别",
      "data_standard": "GB/T 2261.1",
      "is_core_field": true,
      "ref_table": null,
      "neighbors": []
    }
  ]
}
```

### Step 3: 分析业务语义

基于元数据做推断：

| 字段 | 分析结果 | 推断规则方向 |
|------|---------|-------------|
| `PERSION_ID` | 核心字段 + 主键 | 主键唯一、非空、非空字符串 |
| `ID_NO` | 核心字段 + GB 11643 | 18位格式校验、唯一性、校验位验证 |
| `GENDER` + `ID_NO` | 同表 + GB/T 2261.1 | 性别↔身份证第17位奇偶性一致性 |
| `NAME` | 核心字段 | 非空、非空字符串 |

### Step 4: 查阅标准（如需要）

对于关联了 `data_standard` 的字段，调用 `context7` 查询标准详情：

```
context7 查询: "GB 11643 公民身份号码 校验规则"
```

获取标准的具体规则后，补充到 `business_justification` 中。

### Step 5: 生成基础规则

调用 `dg-builder.generate_rules()`，传入从知识图谱获取的字段信息。

### Step 6: 注解 business_justification

为每条生成的规则追加 `business_justification` 列，内容包括：

- **规则来源**: "知识图谱字段 `ID_NO`（business_term: 身份证件号码，data_standard: GB 11643）"
- **标准依据**: "依据 GB 11643-1999《公民身份号码》，身份证号第18位为校验位"
- **生成理由**: "字段在知识图谱中标记为核心字段（is_core_field=true）"

示例：

```csv
id,table_name,field_name,stage,dimension,rule_name,rule_desc,check_condition,threshold,enabled,business_justification
1,T_CUSTOMER,ID_NO,1,validity,FORMAT_ID_NO,身份证号必须为18位（数字或末尾X）,...,...,,true,"字段 business_term='身份证件号码'，关联国家标准 GB 11643-1999《公民身份号码》，规定公民身份号码为18位 [...]"
```

### Step 7: 保存扩展 CSV

将带 `business_justification` 的规则保存到 `output/rules/<table>/<dialect>_<dimension>.csv`

### Step 8: 调用 rules-reviewer 审查

Agent 内部自动调用 `rules-reviewer` agent 对生成的规则进行质量审查。

### Step 9: 返回结果

输出：
- 规则总数 + 维度分布摘要
- 各规则的 `business_justification` 摘要
- rules-reviewer 的审查结论
- CSV 文件路径

---

## 文件结构（渐进式披露）

```
plugin/
├── skills/
│   └── dg-rules/
│       ├── SKILL.md                      # Level 2: thin wrapper
│       └── references/
│           ├── agent-guide.md             # Level 3: Agent 完整工作流程
│           └── rules-reference.md        # Level 3: 六维规则参考
└── agents/
    └── dg-rules-agent.md                  # Agent 定义
```

| 操作 | 文件路径 |
|------|---------|
| **新增** | `plugin/agents/dg-rules-agent.md` |
| **修改** | `plugin/skills/dg-rules/SKILL.md` |
| **新增** | `plugin/skills/dg-rules/references/agent-guide.md` |
| **修改** | `plugin/scripts/mcp_neo4j.py` — 新增 `get_table_metadata` 工具 |

---

## 核心组件详细设计

### 1. dg-rules-agent

**文件**: `plugin/agents/dg-rules-agent.md`

Agent 完整工作流程（9个 Step）、规则质量标准、输出格式、错误处理 → 见上方 "Agent 工作流程" 部分。

### 2. dg-rules SKILL.md（新版本）

遵循**渐进式披露原则**：

```
Level 1 (frontmatter)  ← 始终加载 (~100 tokens)
  name, description (精简), context: fork, agent

Level 2 (SKILL.md body)  ← skill 触发时加载 (~500 tokens)
  做什么 + 输入 + 输出 + 错误处理

Level 3 (references/)  ← 按需加载
  ├── agent-guide.md      ← Agent 完整工作流程和实现细节
  └── rules-reference.md ← 六维规则详解
```

**文件**: `plugin/skills/dg-rules/SKILL.md`

```yaml
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

## 参考资源（按需加载）

- `references/agent-guide.md` — Agent 工作流程和实现细节
- `references/rules-reference.md` — 六维规则详解
```

### 3. references/agent-guide.md（Level 3 新增）

**文件**: `plugin/skills/dg-rules/references/agent-guide.md`

Agent 的完整工作流程、技术实现细节、标准查询方法。

详细内容见设计文档上方 "Agent 工作流程" 部分。

### 4. get_table_metadata 工具

**文件**: `plugin/scripts/mcp_neo4j.py` 新增工具

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
    # Cypher 查询：
    # 1. MATCH (pt:PhysicalTable {name: $table_name})
    # 2. OPTIONAL MATCH (pt)-[:HAS_FIELD]->(f:Field)
    # 3. OPTIONAL MATCH (f)-[:REPRESENTS]->(de:DataElement)
    # 4. OPTIONAL MATCH (f)-[r]->(m) WHERE labels(m)[0] IN ['PhysicalTable', 'Field']
    # 5. RETURN 完整结果
```

---

## CSV 格式变更

### 新增列: `business_justification`

位置：追加为最后一列

格式：
```
business_justification
业务来源: 知识图谱字段 ID_NO（business_term=身份证件号码，data_standard=GB 11643）\n标准依据: GB 11643-1999《公民身份号码》第X条规定...\n生成理由: 字段为核心字段，且关联国家标准
```

**转义规则**: 使用 `\n` 表示换行，CSV 读取时解析为多行文本。

### 完整列顺序

```csv
id,table_name,field_name,stage,dimension,rule_name,rule_desc,check_condition,threshold,enabled,business_justification
```

---

## 依赖关系

```
dg-rules-agent
  ├── dg-neo4j MCP
  │     └── get_table_metadata (新增)
  ├── dg-builder MCP
  │     └── generate_rules
  ├── context7 MCP
  │     └── 查询 GB/T 等标准
  ├── rules-reviewer agent
  │     └── 审查规则质量
  └── 文件系统
        └── output/rules/<table>/*.csv
```

---

## 后续扩展方向（不在本次范围内）

1. **跨表规则增强**: 利用 `neighbors` 信息生成外键引用完整性规则
2. **规则模板引擎**: 用户自定义 YAML 规则模板，Agent 按模板填充
3. **历史规则库**: 将已生成的规则持久化，支持规则复用和版本管理
4. **规则执行闭环**: Agent 进一步调用 run_checks + generate_report，输出完整质检报告
