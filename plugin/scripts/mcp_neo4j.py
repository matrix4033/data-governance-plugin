#!/usr/bin/env python3
"""Neo4j 元数据查询 MCP Server — 5 工具。

使用 FastMCP SDK 实现。
依赖: pip install mcp neo4j
"""

import os
from neo4j import GraphDatabase
from neo4j.exceptions import ServiceUnavailable, AuthError
from mcp.server.fastmcp import FastMCP

# 初始化 FastMCP 服务器
mcp = FastMCP("dg-neo4j")

# Neo4j 连接配置
NEO4J_HOST = os.environ.get("NEO4J_HOST", "127.0.0.1")
NEO4J_PORT = os.environ.get("NEO4J_PORT", "7687")
NEO4J_USER = os.environ.get("NEO4J_USER", "neo4j")
NEO4J_PASSWORD = os.environ.get("NEO4J_PASSWORD", "")
NEO4J_DATABASE = os.environ.get("NEO4J_DATABASE", "neo4j")
URI = f"bolt://{NEO4J_HOST}:{NEO4J_PORT}"


def get_driver():
    return GraphDatabase.driver(URI, auth=(NEO4J_USER, NEO4J_PASSWORD))


def check_neo4j_connection():
    """检查 Neo4j 连通性，失败时抛出异常。"""
    driver = get_driver()
    try:
        driver.verify_connectivity()
    finally:
        driver.close()


@mcp.tool()
def check_connection() -> str:
    """测试 Neo4j 数据库连通性，返回连接状态和配置信息。"""
    try:
        check_neo4j_connection()
        return f"""Neo4j 连接成功！
- 主机: {NEO4J_HOST}:{NEO4J_PORT}
- 用户: {NEO4J_USER}
- 数据库: {NEO4J_DATABASE}"""
    except ServiceUnavailable:
        return f"无法连接 Neo4j: {NEO4J_HOST}:{NEO4J_PORT}，请确认服务是否启动"
    except AuthError:
        return "Neo4j 认证失败，请检查用户名或密码"
    except Exception as e:
        return f"连接失败: {e}"


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
    import json as _json

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
                return _json.dumps({
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

            return _json.dumps({
                "status": "ok",
                "data": {
                    "table_name": table_name,
                    "schema": schema or records[0].get("schema") or "",
                    "fields": list(field_map.values())
                }
            }, ensure_ascii=False)
    finally:
        driver.close()


@mcp.tool()
def get_graph_overview() -> str:
    """获取元数据知识图谱的整体结构统计（节点类型、关系类型、数量）。"""
    check_neo4j_connection()
    driver = get_driver()
    data = {}
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            # 节点类型统计
            result = session.run(
                "MATCH (n) RETURN labels(n)[0] AS type, count(n) AS cnt ORDER BY cnt DESC"
            )
            data["node_types"] = [{"type": r["type"], "count": r["cnt"]} for r in result]

            # 关系类型统计
            result = session.run(
                "MATCH ()-[r]->() RETURN type(r) AS type, count(r) AS cnt ORDER BY cnt DESC"
            )
            data["relationship_types"] = [{"type": r["type"], "count": r["cnt"]} for r in result]

            # 总数
            node_count = sum(n["count"] for n in data["node_types"])
            rel_count = sum(r["count"] for r in data["relationship_types"])
            data["summary"] = {"nodes": node_count, "relationships": rel_count}

            import json
            return json.dumps(data, indent=2, ensure_ascii=False)
    finally:
        driver.close()


@mcp.tool()
def search_metadata(
    mode: str,
    query: str,
    node_type: str = None,
    attribute_name: str = "business_term",
    limit: int = 20,
    offset: int = 0
) -> str:
    """搜索元数据：支持 keyword（模糊搜索name/business_term）、attribute（按属性值搜索）、exact（精确匹配）三种模式。

    Args:
        mode: 搜索模式 - keyword/attribute/exact
        query: 搜索关键词
        node_type: 节点类型过滤（可选）
        attribute_name: 属性名（用于 attribute 模式）
        limit: 返回数量限制
        offset: 分页偏移
    """
    check_neo4j_connection()

    if not query:
        return "错误: query 参数必填"

    cypher_params = {"name": query, "offset": offset, "limit": min(limit, 100)}
    if node_type:
        cypher_params["node_type"] = node_type

    driver = get_driver()
    results = []
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            if mode == "exact":
                cypher = "MATCH (n) WHERE n.name = $name"
                if node_type:
                    cypher += " AND labels(n)[0] = $node_type"
                cypher += " RETURN id(n) AS node_id, labels(n)[0] AS node_type, n.name AS name, n.business_term AS business_term SKIP $offset LIMIT $limit"
                result = session.run(cypher, cypher_params)

            elif mode == "attribute":
                cypher = f"MATCH (n) WHERE n.{attribute_name} CONTAINS $name"
                if node_type:
                    cypher += " AND labels(n)[0] = $node_type"
                cypher += " RETURN id(n) AS node_id, labels(n)[0] AS node_type, n.name AS name, n.business_term AS business_term SKIP $offset LIMIT $limit"
                result = session.run(cypher, cypher_params)

            else:
                # keyword 模式
                cypher = "MATCH (n) WHERE n.name CONTAINS $name OR n.business_term CONTAINS $name"
                if node_type:
                    cypher += " AND labels(n)[0] = $node_type"
                cypher += " RETURN id(n) AS node_id, labels(n)[0] AS node_type, n.name AS name, n.business_term AS business_term SKIP $offset LIMIT $limit"
                result = session.run(cypher, cypher_params)

            for r in result:
                row = {"node_id": r["node_id"], "node_type": r["node_type"], "name": r["name"]}
                if r.get("business_term"):
                    row["business_term"] = r["business_term"]
                results.append(row)

        import json
        return json.dumps({"status": "ok", "data": results, "count": len(results)}, indent=2, ensure_ascii=False)
    finally:
        driver.close()


@mcp.tool()
def get_node_details(node_id: int, include_neighbors: bool = True) -> str:
    """获取单个元数据节点的完整属性（含邻居节点）。

    Args:
        node_id: 节点 ID
        include_neighbors: 是否包含邻居节点
    """
    check_neo4j_connection()

    driver = get_driver()
    data = {}
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            # 节点属性
            result = session.run(
                "MATCH (n) WHERE id(n) = $node_id RETURN n, labels(n)[0] AS node_type",
                node_id=int(node_id),
            )
            record = result.single()
            if not record:
                return f"错误: 节点 {node_id} 不存在"

            node = record["n"]
            data["node_id"] = node_id
            data["node_type"] = record["node_type"]
            data["properties"] = dict(node)

            # Field 节点附加 DataElement 业务描述
            if record["node_type"] == "Field":
                de_result = session.run(
                    "MATCH (f:Field)-[:REPRESENTS]->(de:DataElement) WHERE id(f) = $node_id "
                    "RETURN de.business_description AS business_description, de.name AS data_element_name",
                    node_id=int(node_id),
                )
                de_row = de_result.single()
                if de_row and de_row.get("business_description"):
                    data["business_description"] = de_row["business_description"]
                    data["data_element_name"] = de_row["data_element_name"]

            if include_neighbors:
                result = session.run(
                    "MATCH (n)-[r]->(m) WHERE id(n) = $node_id "
                    "RETURN id(m) AS neighbor_id, labels(m)[0] AS neighbor_type, "
                    "m.name AS neighbor_name, type(r) AS relationship_type",
                    node_id=int(node_id),
                )
                neighbors = []
                for r in result:
                    neighbors.append({
                        "node_id": r["neighbor_id"],
                        "node_type": r["neighbor_type"],
                        "name": r["neighbor_name"],
                        "relationship": r["relationship_type"],
                    })
                data["neighbors"] = neighbors

        import json
        return json.dumps({"status": "ok", "data": data}, indent=2, ensure_ascii=False)
    finally:
        driver.close()


@mcp.tool()
def get_lineage(entity_name: str, entity_type: str = None, lineage_type: str = "both") -> str:
    """追溯血缘关系：
    - business: 业务血缘（SubjectDomain→BusinessDomain→BusinessSubject→LogicalEntity→PhysicalTable）
    - technical: 技术血缘（Database→PhysicalTable→Field）
    - both: 两者都返回

    Args:
        entity_name: 实体名称
        entity_type: 实体类型（Field/LogicalEntity/PhysicalTable/BusinessSubject）
        lineage_type: 血缘类型 - business/technical/both
    """
    check_neo4j_connection()

    if not entity_name:
        return "错误: entity_name 参数必填"

    driver = get_driver()
    data = {}
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            if lineage_type in ("business", "both"):
                data["business"] = _get_business_lineage(session, entity_name, entity_type)
            if lineage_type in ("technical", "both"):
                data["technical"] = _get_technical_lineage(session, entity_name, entity_type)

        import json
        return json.dumps({"status": "ok", "data": data}, indent=2, ensure_ascii=False)
    finally:
        driver.close()


def _get_business_lineage(session, entity_name, entity_type):
    """业务血缘"""
    if entity_type == "Field":
        cypher = (
            "MATCH (pt:PhysicalTable)-[:HAS_FIELD]->(f:Field) "
            "WHERE f.name = $name "
            "OPTIONAL MATCH (le:LogicalEntity)-[:MAPS_TO]->(pt) "
            "OPTIONAL MATCH (bs:BusinessSubject)-[:CONTAINS]->(le) "
            "OPTIONAL MATCH (bd:BusinessDomain)-[:CONTAINS]->(bs) "
            "OPTIONAL MATCH (sd:SubjectDomain)-[:CONTAINS]->(bd) "
            "RETURN sd.name AS subject_domain, bd.name AS business_domain, "
            "bs.name AS business_subject, le.logical_name AS logical_entity, pt.name AS physical_table"
        )
        return [dict(r) for r in session.run(cypher, name=entity_name)]

    if entity_type == "LogicalEntity":
        cypher = (
            "MATCH (le:LogicalEntity) WHERE le.logical_name = $name "
            "OPTIONAL MATCH (bs:BusinessSubject)-[:CONTAINS]->(le) "
            "OPTIONAL MATCH (bd:BusinessDomain)-[:CONTAINS]->(bs) "
            "OPTIONAL MATCH (sd:SubjectDomain)-[:CONTAINS]->(bd) "
            "OPTIONAL MATCH (le)-[:MAPS_TO]->(pt:PhysicalTable) "
            "RETURN sd.name AS subject_domain, bd.name AS business_domain, "
            "bs.name AS business_subject, le.logical_name AS logical_entity, pt.name AS physical_table"
        )
        return [dict(r) for r in session.run(cypher, name=entity_name)]

    if entity_type == "PhysicalTable":
        cypher = (
            "MATCH (pt:PhysicalTable) WHERE pt.name = $name "
            "OPTIONAL MATCH (le:LogicalEntity)-[:MAPS_TO]->(pt) "
            "OPTIONAL MATCH (bs:BusinessSubject)-[:CONTAINS]->(le) "
            "OPTIONAL MATCH (bd:BusinessDomain)-[:CONTAINS]->(bs) "
            "OPTIONAL MATCH (sd:SubjectDomain)-[:CONTAINS]->(bd) "
            "RETURN sd.name AS subject_domain, bd.name AS business_domain, "
            "bs.name AS business_subject, le.logical_name AS logical_entity, pt.name AS physical_table"
        )
        return [dict(r) for r in session.run(cypher, name=entity_name)]

    if entity_type == "BusinessSubject":
        cypher = (
            "MATCH (bs:BusinessSubject) WHERE bs.name = $name "
            "OPTIONAL MATCH (bd:BusinessDomain)-[:CONTAINS]->(bs) "
            "OPTIONAL MATCH (sd:SubjectDomain)-[:CONTAINS]->(bd) "
            "OPTIONAL MATCH (bs)-[:CONTAINS]->(le:LogicalEntity) "
            "OPTIONAL MATCH (le)-[:MAPS_TO]->(pt:PhysicalTable) "
            "RETURN sd.name AS subject_domain, bd.name AS business_domain, "
            "bs.name AS business_subject, le.logical_name AS logical_entity, pt.name AS physical_table"
        )
        return [dict(r) for r in session.run(cypher, name=entity_name)]

    cypher = (
        "MATCH (n:{0}) WHERE n.name = $name "
        "OPTIONAL MATCH (n)<-[:CONTAINS*0..4]-(sd:SubjectDomain) "
        "RETURN sd.name AS subject_domain"
    ).format(entity_type or "LogicalEntity")
    return [dict(r) for r in session.run(cypher, name=entity_name)]


def _get_technical_lineage(session, entity_name, entity_type):
    """技术血缘"""
    if entity_type == "Field":
        cypher = (
            "MATCH (pt:PhysicalTable)-[:HAS_FIELD]->(f:Field) "
            "WHERE f.name = $name "
            "OPTIONAL MATCH (db:Database)-[:CONTAINS]->(pt) "
            "RETURN db.name AS database_name, pt.name AS physical_table, f.name AS field"
        )
        return [dict(r) for r in session.run(cypher, name=entity_name)]

    cypher = (
        "MATCH (t:PhysicalTable) WHERE t.name = $name "
        "OPTIONAL MATCH (db:Database)-[:CONTAINS]->(t) "
        "RETURN db.name AS database_name, t.name AS physical_table"
    )
    return [dict(r) for r in session.run(cypher, name=entity_name)]


@mcp.tool()
def get_enum_values(code: str) -> str:
    """获取指定枚举的所有值。

    Args:
        code: 枚举代码，如 "FL_XB"

    Returns:
        JSON: {"status": "ok", "data": {"code": "FL_XB", "name": "性别", "values": [...]}}
    """
    import json as _json

    check_neo4j_connection()
    driver = get_driver()
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            cypher = """
            MATCH (e:EnumCategory {code: $code})
            RETURN e.name AS name, e.code AS code, e.values AS values
            """
            result = session.run(cypher, code=code)
            record = result.single()
            if not record:
                return _json.dumps({
                    "status": "error",
                    "message": f"枚举 {code} 不存在"
                }, ensure_ascii=False)

            return _json.dumps({
                "status": "ok",
                "data": {
                    "code": record["code"],
                    "name": record["name"],
                    "values": record["values"] or []
                }
            }, ensure_ascii=False)
    finally:
        driver.close()


@mcp.tool()
def search_enums(keyword: str) -> str:
    """搜索枚举类别。

    Args:
        keyword: 搜索关键词（匹配 name 或 code）

    Returns:
        JSON: {"status": "ok", "data": [{"code": "...", "name": "...", "value_count": N}, ...]}
    """
    import json as _json

    check_neo4j_connection()
    driver = get_driver()
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            cypher = """
            MATCH (e:EnumCategory)
            WHERE e.name CONTAINS $keyword OR e.code CONTAINS $keyword
            RETURN e.code AS code, e.name AS name, e.value_count AS value_count
            ORDER BY e.name
            """
            result = session.run(cypher, keyword=keyword)
            records = list(result)
            return _json.dumps({
                "status": "ok",
                "data": [
                    {"code": r["code"], "name": r["name"], "value_count": r["value_count"]}
                    for r in records
                ]
            }, ensure_ascii=False)
    finally:
        driver.close()


if __name__ == "__main__":
    mcp.run(transport="stdio")
