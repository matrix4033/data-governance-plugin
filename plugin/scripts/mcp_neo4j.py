#!/usr/bin/env python3
"""Neo4j 元数据查询 MCP Server — 4 工具。

依赖: pip install neo4j
连接配置通过环境变量传入（.mcp.json 中 neo4j-query 的 env）。
"""

import json
import os
import sys
import traceback
from datetime import date, datetime, time
from neo4j import GraphDatabase
from neo4j.exceptions import ServiceUnavailable, AuthError
from neo4j.time import DateTime, Date, Time


class Neo4jEncoder(json.JSONEncoder):
    """处理 Neo4j DateTime/Date/Time 等不可序列化类型。"""
    def default(self, obj):
        if isinstance(obj, (DateTime, datetime)):
            return obj.isoformat()
        if isinstance(obj, (Date, date)):
            return obj.isoformat()
        if isinstance(obj, (Time, time)):
            return str(obj)
        return super().default(obj)


# 检查 Neo4j 是否可达的装饰器
NEO4J_CHECKED = False
NEO4J_OK = False


def require_neo4j(func):
    """工具装饰器：自动检测 Neo4j 连通性，失败时返回友好提示。"""
    from functools import wraps
    @wraps(func)
    def wrapper(params):
        try:
            driver = get_driver()
            driver.verify_connectivity()
            driver.close()
        except (ServiceUnavailable, AuthError, Exception) as e:
            return {
                "status": "error",
                "message": (
                    f"Neo4j 无法连接。请先配置 Neo4j 连接：\n"
                    f"  主机: {NEO4J_HOST}:{NEO4J_PORT}\n"
                    f"  用户: {NEO4J_USER}\n"
                    f"  密码: (已设置)\n\n"
                    f"可通过以下方式设置：\n"
                    f"  1. 环境变量: export NEO4J_HOST=... NEO4J_PASSWORD=...\n"
                    f"  2. Claude Code settings.json env 字段\n\n"
                    f"错误详情: {e}"
                ),
            }
        return func(params)
    return wrapper


NEO4J_HOST = os.environ.get("NEO4J_HOST", "127.0.0.1")
NEO4J_PORT = os.environ.get("NEO4J_PORT", "7687")
NEO4J_USER = os.environ.get("NEO4J_USER", "neo4j")
NEO4J_PASSWORD = os.environ.get("NEO4J_PASSWORD", "")
NEO4J_DATABASE = os.environ.get("NEO4J_DATABASE", "neo4j")

URI = f"bolt://{NEO4J_HOST}:{NEO4J_PORT}"


def get_driver():
    return GraphDatabase.driver(URI, auth=(NEO4J_USER, NEO4J_PASSWORD))


# ============================================================
# 工具处理函数
# ============================================================

@require_neo4j
def handle_overview(params: dict) -> dict:
    """图谱概览：节点/关系统计。"""
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
    finally:
        driver.close()
    return {"status": "ok", "data": data}


@require_neo4j
def handle_search(params: dict) -> dict:
    """元数据搜索：keyword / attribute / exact 三种模式。"""
    mode = params.get("mode", "keyword")
    query = params.get("query", "")
    node_type = params.get("node_type")
    limit = min(params.get("limit", 20), 100)
    offset = params.get("offset", 0)

    if not query:
        return {"status": "error", "message": "query is required"}

    # 使用参数字典避免 session.run() keyword 冲突
    cypher_params = {"name": query, "offset": offset, "limit": limit}
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
                attr_name = params.get("attribute_name", "business_term")
                cypher = f"MATCH (n) WHERE n.{attr_name} CONTAINS $name"
                if node_type:
                    cypher += " AND labels(n)[0] = $node_type"
                cypher += " RETURN id(n) AS node_id, labels(n)[0] AS node_type, n.name AS name, n.business_term AS business_term SKIP $offset LIMIT $limit"
                result = session.run(cypher, cypher_params)

            else:
                # keyword 模式：name 和 business_term
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
    finally:
        driver.close()

    return {"status": "ok", "data": results, "count": len(results)}


@require_neo4j
def handle_details(params: dict) -> dict:
    """节点详情（含邻居节点）。"""
    node_id = params.get("node_id")
    include_neighbors = params.get("include_neighbors", True)

    if node_id is None:
        return {"status": "error", "message": "node_id is required"}

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
                return {"status": "error", "message": f"Node {node_id} not found"}

            node = record["n"]
            data["node_id"] = node_id
            data["node_type"] = record["node_type"]
            node_props = dict(node)
            data["properties"] = node_props

            # Field 节点附加 DataElement 业务描述
            if record["node_type"] == "Field":
                de_result = session.run(
                    "MATCH (f:Field)-[:REPRESENTS]->(de:DataElement) WHERE id(f) = $node_id "
                    "RETURN de.business_description AS business_description, "
                    "de.name AS data_element_name",
                    node_id=int(node_id),
                )
                de_row = de_result.single()
                if de_row and de_row.get("business_description"):
                    data["business_description"] = de_row["business_description"]
                    data["data_element_name"] = de_row["data_element_name"]

            if include_neighbors:
                # 直接关联的邻居
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
    finally:
        driver.close()

    return {"status": "ok", "data": data}


@require_neo4j
def handle_lineage(params: dict) -> dict:
    """血缘追溯：business / technical / both。"""
    entity_name = params.get("entity_name", "")
    entity_type = params.get("entity_type")
    lineage_type = params.get("lineage_type", "both")

    if not entity_name:
        return {"status": "error", "message": "entity_name is required"}

    driver = get_driver()
    data = {}
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            if lineage_type in ("business", "both"):
                data["business"] = _get_business_lineage(session, entity_name, entity_type)
            if lineage_type in ("technical", "both"):
                data["technical"] = _get_technical_lineage(session, entity_name, entity_type)
    finally:
        driver.close()

    return {"status": "ok", "data": data}


def _get_business_lineage(session, entity_name, entity_type):
    """业务血缘：SubjectDomain → BusinessDomain → BusinessSubject → LogicalEntity → PhysicalTable。
    图谱关系方向：CONTAINS 自上而下，MAPS_TO 自逻辑实体到物理表。"""
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

    # 默认：适用于通用 entity_type 或未指定类型
    cypher = (
        f"MATCH (n:{entity_type or 'LogicalEntity'}) WHERE n.name = $name "
        "OPTIONAL MATCH (n)<-[:CONTAINS*0..4]-(sd:SubjectDomain) "
        "RETURN sd.name AS subject_domain"
    )
    return [dict(r) for r in session.run(cypher, name=entity_name)]


def _get_technical_lineage(session, entity_name, entity_type):
    """技术血缘：Database → PhysicalTable → Field。
    图谱关系：CONTAINS 自上而下，HAS_FIELD 物理表到字段。"""
    if entity_type == "Field":
        cypher = (
            "MATCH (pt:PhysicalTable)-[:HAS_FIELD]->(f:Field) "
            "WHERE f.name = $name "
            "OPTIONAL MATCH (db:Database)-[:CONTAINS]->(pt) "
            "RETURN db.name AS database_name, pt.name AS physical_table, f.name AS field"
        )
        return [dict(r) for r in session.run(cypher, name=entity_name)]

    # PhysicalTable 或默认
    cypher = (
        "MATCH (t:PhysicalTable) WHERE t.name = $name "
        "OPTIONAL MATCH (db:Database)-[:CONTAINS]->(t) "
        "RETURN db.name AS database_name, t.name AS physical_table"
    )
    return [dict(r) for r in session.run(cypher, name=entity_name)]


# ============================================================
# 工具注册
# ============================================================

def handle_check_connection(params: dict) -> dict:
    """测试 Neo4j 连通性。"""
    try:
        driver = get_driver()
        driver.verify_connectivity()
        driver.close()
        return {
            "status": "ok",
            "data": {
                "connected": True,
                "host": NEO4J_HOST,
                "port": NEO4J_PORT,
                "user": NEO4J_USER,
                "database": NEO4J_DATABASE,
            },
        }
    except ServiceUnavailable:
        return {"status": "error", "message": f"无法连接 Neo4j: {NEO4J_HOST}:{NEO4J_PORT}，请确认服务是否启动"}
    except AuthError:
        return {"status": "error", "message": f"Neo4j 认证失败，请检查用户名或密码"}
    except Exception as e:
        return {"status": "error", "message": f"连接失败: {e}"}

TOOLS = {
    "check_connection": {
        "description": "测试 Neo4j 数据库连通性，返回连接状态和配置信息",
        "params": {},
        "handler": handle_check_connection,
    },
    "get_graph_overview": {
        "description": "获取元数据知识图谱的整体结构统计（节点类型、关系类型、数量）",
        "params": {},
        "handler": handle_overview,
    },
    "search_metadata": {
        "description": "搜索元数据：支持 keyword（模糊搜索name/business_term）、attribute（按属性值搜索）、exact（精确匹配）三种模式",
        "params": {
            "mode": {"type": "string", "enum": ["keyword", "attribute", "exact"], "required": True},
            "query": {"type": "string", "required": True},
            "node_type": {"type": "string", "required": False},
            "attribute_name": {"type": "string", "required": False},
            "limit": {"type": "number", "default": 20},
            "offset": {"type": "number", "default": 0},
        },
        "handler": handle_search,
    },
    "get_node_details": {
        "description": "获取单个元数据节点的完整属性（含邻居节点）",
        "params": {
            "node_id": {"type": "number", "required": True},
            "include_neighbors": {"type": "boolean", "default": True},
        },
        "handler": handle_details,
    },
    "get_lineage": {
        "description": "追溯血缘关系：business=业务血缘（SubjectDomain→BusinessDomain→BusinessSubject→LogicalEntity），technical=技术血缘（Database→PhysicalTable→Field）",
        "params": {
            "entity_name": {"type": "string", "required": True},
            "entity_type": {"type": "string", "required": False},
            "lineage_type": {"type": "string", "enum": ["business", "technical", "both"], "default": "both"},
        },
        "handler": handle_lineage,
    },
}


# ============================================================
# JSON-RPC over stdio
# ============================================================

def send_response(msg):
    sys.stdout.write(json.dumps(msg, ensure_ascii=False, cls=Neo4jEncoder) + "\n")
    sys.stdout.flush()


def handle_request(request):
    req_id = request.get("id")
    method = request.get("method", "")
    params = request.get("params", {})

    # MCP 标准初始化握手
    if method == "initialize":
        send_response({
            "id": req_id,
            "result": {
                "protocolVersion": params.get("protocolVersion", "2024-11-05"),
                "capabilities": {
                    "tools": {}
                },
                "serverInfo": {
                    "name": "dg-neo4j",
                    "version": "2.0.0"
                }
            }
        })
        return

    # 初始化完成通知（无需响应）
    if method == "notifications/initialized":
        return

    if method == "tools/list":
        tools_list = []
        for name, tool in TOOLS.items():
            input_schema = {"type": "object", "properties": {}}
            for pname, pinfo in tool["params"].items():
                prop = {"type": pinfo.get("type", "string")}
                if "enum" in pinfo:
                    prop["enum"] = pinfo["enum"]
                if "default" in pinfo:
                    prop["default"] = pinfo["default"]
                if "description" in pinfo:
                    prop["description"] = pinfo["description"]
                input_schema["properties"][pname] = prop
                if pinfo.get("required", False):
                    input_schema.setdefault("required", []).append(pname)
            tools_list.append({
                "name": name,
                "description": tool["description"],
                "inputSchema": input_schema,
            })
        send_response({"id": req_id, "result": {"tools": tools_list}})
        return

    if method in ("tools/call", "mcp.call_tool"):
        tool_name = params.get("name", "")
        tool_args = params.get("arguments", params.get("args", {}))
        tool = TOOLS.get(tool_name)
        if not tool:
            send_response({"id": req_id, "error": {"code": -32601, "message": f"Tool not found: {tool_name}"}})
            return
        try:
            result = tool["handler"](tool_args)
            send_response({
                "id": req_id,
                "result": {
                    "content": [{"type": "text", "text": json.dumps(result, ensure_ascii=False, indent=2, cls=Neo4jEncoder)}]
                },
            })
        except Exception as e:
            send_response({
                "id": req_id,
                "error": {"code": -32603, "message": str(e), "data": traceback.format_exc()},
            })
        return

    if method in ("tools/get", "mcp.get_tool"):
        tool_name = params.get("name", "")
        tool = TOOLS.get(tool_name)
        if not tool:
            send_response({"id": req_id, "error": {"code": -32601, "message": f"Tool not found: {tool_name}"}})
            return
        send_response({
            "id": req_id,
            "result": {
                "name": tool_name,
                "description": tool["description"],
                "inputSchema": tool.get("inputSchema", {}),
            },
        })
        return

    # 未知方法
    send_response({"id": req_id, "error": {"code": -32601, "message": f"Unknown method: {method}"}})


def main():
    buffer = ""
    for line in sys.stdin:
        buffer += line
        while "\n" in buffer:
            msg_line, buffer = buffer.split("\n", 1)
            msg_line = msg_line.strip()
            if not msg_line:
                continue
            try:
                request = json.loads(msg_line)
                handle_request(request)
            except json.JSONDecodeError:
                send_response({"jsonrpc": "2.0", "id": None, "error": {"code": -32700, "message": "Parse error"}})


if __name__ == "__main__":
    main()
