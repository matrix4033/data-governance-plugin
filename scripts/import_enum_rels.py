#!/usr/bin/env python3
"""
批量建立 Field → EnumCategory 的 ENUM_TYPE_OF 关系。

匹配逻辑：Field.business_term 包含 EnumCategory.name → 建立 ENUM_TYPE_OF 关系

用法:
    python import_enum_rels.py                 # 默认处理 FL_XB, MC_MZ
    python import_enum_rels.py --codes FL_XB   # 仅处理 FL_XB
    python import_enum_rels.py --codes FL_XB,MC_MZ,MC_GJ  # 处理多个
"""

import argparse
import sys
from neo4j import GraphDatabase

# NEO4J 配置
NEO4J_URI = "bolt://127.0.0.1:7687"
NEO4J_USER = "neo4j"
NEO4J_DATABASE = "neo4j"

# 枚举代码 → 中文名称映射
NAME_MAP = {
    "FL_XB": "性别",
    "MC_MZ": "民族",
    "MC_GJ": "国籍",
    "FL_ZZMM": "政治面貌",
    "FL_ZJXY": "宗教信仰",
    "FL_BYZK": "兵役状况",
    "MC_XL": "学历",
    "MC_XW": "学位",
    "LB_HK": "户口类别",
    "LB_ZY": "职业类别",
    "MC_ZY": "职业名称",
    "ZK_JK": "健康状况",
    "MC_CJDJ": "残疾等级",
    "ID_TYPES": "证件类型",
}


def get_password():
    """从环境变量获取 Neo4j 密码"""
    import os
    pwd = os.environ.get("NEO4J_PASSWORD", "")
    if not pwd:
        # 尝试从配置文件读取
        config_path = "/Users/rapa/Desktop/code/data-governance-plugin/.neo4j.conf"
        if os.path.exists(config_path):
            with open(config_path) as f:
                for line in f:
                    if line.startswith("NEO4J_PASSWORD="):
                        return line.split("=", 1)[1].strip()
        print("警告: 未设置 NEO4J_PASSWORD 环境变量，尝试空密码", file=sys.stderr)
    return pwd or "Fassiwell0."


def create_relationships(tx, code: str, name: str) -> int:
    """为指定枚举代码建立所有匹配的 Field → EnumCategory 关系"""
    query = """
    MATCH (f:Field), (e:EnumCategory {code: $code})
    WHERE f.business_term CONTAINS $name
    CREATE (f)-[:ENUM_TYPE_OF]->(e)
    RETURN count(*) AS created
    """
    result = tx.run(query, code=code, name=name)
    record = result.single()
    return record["created"] if record else 0


def main():
    parser = argparse.ArgumentParser(description="批量建立 Field → EnumCategory 的 ENUM_TYPE_OF 关系")
    parser.add_argument(
        "--codes",
        default="FL_XB,MC_MZ",
        help="逗号分隔的枚举代码，默认: FL_XB,MC_MZ",
    )
    args = parser.parse_args()

    codes = [c.strip() for c in args.codes.split(",") if c.strip()]

    password = get_password()

    print(f"连接 Neo4j: {NEO4J_URI}")
    driver = GraphDatabase.driver(NEO4J_URI, auth=(NEO4J_USER, password))

    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            total = 0
            for code in codes:
                name = NAME_MAP.get(code)
                if not name:
                    print(f"跳过未知代码: {code}")
                    continue

                print(f"\n处理枚举: {code} ({name})")
                created = session.execute_write(create_relationships, code, name)
                print(f"  建立关系: {created} 条")
                total += created

            print(f"\n总计建立 ENUM_TYPE_OF 关系: {total} 条")

    finally:
        driver.close()


if __name__ == "__main__":
    main()
