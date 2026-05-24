# 元数据查询参考

## Cypher 查询示例

以下 Cypher 查询可用于直接查询 Neo4j 元数据图谱（如需获取更多数据）。

### 表结构查询

```cypher
// 查看物理表及字段
MATCH (t:PhysicalTable)-[:HAS_FIELD]->(f:Field)
WHERE t.name = 'T_CUSTOMER'
RETURN t.name AS table_name, f.name AS field_name, f.data_type AS data_type, f.business_term AS business_term
ORDER BY f.ordinal_position
```

### 搜索字段

```cypher
// 关键词搜索字段
MATCH (f:Field)
WHERE f.name CONTAINS 'ID' OR f.business_term CONTAINS '证件'
RETURN f.name AS field_name, f.business_term AS business_term,
       [(f)<-[:HAS_FIELD]-(t) | t.name][0] AS table_name
LIMIT 20
```

### 业务血缘

```cypher
// 从主题域到物理表的完整业务血缘
MATCH (sd:SubjectDomain)-[:CONTAINS]->(bd:BusinessDomain)
      -[:CONTAINS]->(bs:BusinessSubject)
      -[:CONTAINS]->(le:LogicalEntity)
      -[:MAPS_TO]->(pt:PhysicalTable)
WHERE pt.name = 'T_CUSTOMER'
RETURN sd.name AS subject_domain, bd.name AS business_domain,
       bs.name AS business_subject, le.logical_name AS logical_entity,
       pt.name AS physical_table
```

### 技术血缘

```cypher
// 查看数据库到字段的完整技术血缘
MATCH (db:Database)-[:CONTAINS]->(pt:PhysicalTable)
      -[:HAS_FIELD]->(f:Field)
WHERE pt.name = 'T_CUSTOMER'
RETURN db.name AS database_name, pt.name AS table_name,
       f.name AS field_name, f.data_type AS data_type
ORDER BY f.ordinal_position
```

### 查找字段关联的数据元

```cypher
// 查找字段的标准数据元
MATCH (f:Field)-[:REPRESENTS]->(de:DataElement)
WHERE f.name = 'GENDER'
RETURN f.name AS field_name, de.name AS data_element_name,
       de.business_description AS description, de.data_type AS standard_type
```

### 图谱统计

```cypher
// 各节点类型数量
MATCH (n)
RETURN labels(n)[0] AS node_type, count(n) AS count
ORDER BY count DESC

// 各关系类型数量
MATCH ()-[r]->()
RETURN type(r) AS rel_type, count(r) AS count
ORDER BY count DESC
```

## MCP 搜索工具模式对照

| 场景 | mode | query 示例 | node_type |
|------|------|------------|-----------|
| 搜字段"身份证" | keyword | "身份证" | "Field" |
| 按业务术语搜 | attribute | "自然人" | (不指定) |
| 精确表名 | exact | "T_CUSTOMER" | "PhysicalTable" |

## 注意

- `search_metadata` 返回的 `node_id` 可直接用于 `get_node_details`
- keyword 模式同时搜索 `name` 和 `business_term` 两个属性
- attribute 模式需指定 `attribute_name` 参数
