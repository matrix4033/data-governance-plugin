#!/usr/bin/env python3
"""导出 Neo4j 图谱数据为 Cypher 脚本（MERGE 版本）。"""
from neo4j import GraphDatabase

URI = "bolt://127.0.0.1:7687"
AUTH = ("neo4j", "Fassiwell0.")
OUTPUT = "data/neo4j-init/init.cql"

def escape(s):
    if s is None:
        return "null"
    s = str(s).replace('\\', '\\\\').replace('"', '\\"').replace("\n", "\\n").replace("\r", "\\r")
    return f'"{s}"'

driver = GraphDatabase.driver(URI, auth=AUTH)

with driver.session(database="neo4j") as session:
    # 验证数据量
    cnt = session.run("MATCH (n) RETURN count(n) AS cnt").single()["cnt"]
    rel_cnt = session.run("MATCH ()-[r]->() RETURN count(r) AS cnt").single()["cnt"]
    print(f"Nodes: {cnt}, Relationships: {rel_cnt}")

    with open(OUTPUT, 'w', encoding='utf-8') as f:
        f.write("// Neo4j Graph Init Script\n")
        f.write(f"// Auto-generated: {cnt} nodes, {rel_cnt} relationships\n")
        f.write("// Usage: MATCH (n) DETACH DELETE n; :source <this_file>\n\n")

        # 节点: 用 MERGE 按 name/logical_name 唯一键
        f.write(":begin\n")
        f.write("// ===== NODES =====\n")
        nodes = session.run("""
            MATCH (n) RETURN labels(n)[0] AS type, properties(n) AS props
            ORDER BY CASE labels(n)[0]
                WHEN 'SubjectDomain' THEN 1
                WHEN 'Database' THEN 2
                WHEN 'BusinessDomain' THEN 3
                WHEN 'BusinessSubject' THEN 4
                WHEN 'LogicalEntity' THEN 5
                WHEN 'PhysicalTable' THEN 6
                WHEN 'DataElement' THEN 7
                WHEN 'Field' THEN 8
            END
        """)
        for record in nodes:
            ntype = record["type"]
            props = record["props"]
            # 找唯一标识属性
            name = props.get("name") or props.get("logical_name") or props.get("field_name") or props.get("business_term")
            if not name:
                continue
            user_props = {k: v for k, v in props.items() if k != "created_at"}
            prop_str = ", ".join([f"{k}: {escape(v)}" for k, v in user_props.items()])
            f.write(f"MERGE (n:{ntype} {{name: {escape(name)}}})\n")
            f.write(f"  ON CREATE SET {prop_str};\n\n")
        f.write(":commit\n\n")

        # 关系: MATCH 端点再 CREATE
        f.write(":begin\n")
        f.write("// ===== RELATIONSHIPS =====\n")
        rels = session.run("""
            MATCH (s)-[r]->(t)
            RETURN labels(s)[0] AS stype, s.name AS sname, s.logical_name AS slname,
                   labels(t)[0] AS ttype, t.name AS tname, t.logical_name AS tlname,
                   type(r) AS rtype, properties(r) AS props
        """)
        for record in rels:
            stype = record["stype"]
            sname = record["sname"] or record["slname"]
            ttype = record["ttype"]
            tname = record["tname"] or record["tlname"]
            rtype = record["rtype"]
            props = record["props"]
            if not sname or not tname:
                continue
            prop_str = ""
            if props:
                prop_str = ", ".join([f"{k}: {escape(v)}" for k, v in props.items()])
                prop_str = " {" + prop_str + "}"
            f.write(f"MATCH (s:{stype} {{name: {escape(sname)}}}), (t:{ttype} {{name: {escape(tname)}}})\n")
            f.write(f"CREATE (s)-[r:{rtype}{prop_str}]->(t);\n")
        f.write(":commit\n")
        print(f"Exported to {OUTPUT}")

driver.close()
