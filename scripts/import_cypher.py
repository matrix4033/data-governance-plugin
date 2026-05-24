#!/usr/bin/env python3
"""执行 Cypher 脚本导入 Neo4j。"""
from neo4j import GraphDatabase

URI = "bolt://127.0.0.1:7687"
AUTH = ("neo4j", "Fassiwell0.")
INPUT = "data/neo4j-init/init.cql"

driver = GraphDatabase.driver(URI, auth=AUTH)

with open(INPUT, 'r', encoding='utf-8') as f:
    content = f.read()

# 按分号分割语句，忽略注释行
statements = []
for line in content.split('\n'):
    line = line.strip()
    if not line or line.startswith('//') or line.startswith(':begin'):
        continue
    # 移除行末分号
    line = line.rstrip(';').strip()
    if line:
        statements.append(line)

print(f"Found {len(statements)} statements")

with driver.session(database="neo4j") as session:
    for i, stmt in enumerate(statements):
        if not stmt.strip():
            continue
        try:
            session.run(stmt)
            if (i + 1) % 500 == 0:
                print(f"  Executed {i + 1}/{len(statements)}")
        except Exception as e:
            print(f"  Error at {i}: {e}")
            print(f"  Statement: {stmt[:100]}")
            break

with driver.session(database="neo4j") as session:
    cnt = session.run("MATCH (n) RETURN count(n) AS cnt").single()["cnt"]
    rel = session.run("MATCH ()-[r]->() RETURN count(r) AS cnt").single()["cnt"]
    print(f"Import complete: {cnt} nodes, {rel} relationships")

driver.close()
