---
name: dg-query
version: 1.0.0
description: 当用户要求查表结构、搜索字段、检索字段、查看血缘、元数据搜索时使用。触发词：查表、搜索字段、检索、字段详情、表结构、describe table、search metadata、trace lineage、字段信息、数据来源。通过 dg-neo4j MCP 服务器提供元数据搜索能力。
context: fork
model: inherit
---

# 数据治理：元数据查询

## 功能说明

查询 Neo4j 元数据知识图谱，发现数据资产及其关联关系。提供搜索、表详情、血缘追溯能力。

## 触发条件

当用户提出以下问题时触发：
- **表结构查询**： "查看 XX 表结构"、"字段有哪些"
- **元数据搜索**： "搜索相关表"、"找一下字段"
- **血缘追溯**： "查看血缘"、"数据来源"
- **字段详情**： "字段说明"、"字段类型"、"业务术语"

## 工作流程

### 1. 图谱概览

当用户未指定具体表时，先获取概览：

**工具：** `dg-neo4j` → `get_graph_overview`
- 无需参数
- 返回节点/关系类型的数量统计

### 2. 搜索元数据

**工具：** `dg-neo4j` → `search_metadata`

三种搜索模式：
- **keyword（关键词）**：`{"mode": "keyword", "query": "客户", "node_type": "PhysicalTable"}` — 模糊搜索名称和业务术语
- **attribute（属性）**：`{"mode": "attribute", "query": "客户编号", "attribute_name": "business_term", "node_type": "Field"}` — 按属性值搜索
- **exact（精确）**：`{"mode": "exact", "query": "T_CUSTOMER", "node_type": "PhysicalTable"}` — 精确名称匹配

### 3. 获取节点详情

**工具：** `dg-neo4j` → `get_node_details`

```
{"node_id": 123, "include_neighbors": true}
```

返回节点属性及直接关联的邻居节点（表返回字段列表，字段返回关联关系）。

### 4. 追溯血缘

**工具：** `dg-neo4j` → `get_lineage`

```
{"entity_name": "T_CUSTOMER", "lineage_type": "both"}
```

- `lineage_type: "business"` — 主题域 → 业务域 → 业务主题 → 逻辑实体
- `lineage_type: "technical"` — 数据库 → 物理表 → 字段
- `lineage_type: "both"` — 同时返回两种血缘

## 输出格式

按类型分组展示结果，附带数量统计。

**表结构：**
```
表名: T_CUSTOMER (基本登记信息表)
字段数: 15
| 字段名 | 类型 | 业务术语 | 说明 |
|--------|------|----------|------|
```

**血缘：**
```
业务血缘: 主题域 → 业务域 → 业务主题 → 逻辑实体
技术血缘: 数据库 → Schema → 物理表 → 字段
```

## 注意事项

- 搜索结果中的 `node_id` 可直接传给 `get_node_details` 使用
- 字段搜索结果在可用时会包含 `table_name` 属性
- 如果搜索无结果，可尝试使用 keyword 模式作为备选
