#!/usr/bin/env python3
"""从 enum_values.json 导入 EnumCategory 节点到 Neo4j。"""
import argparse
import json
import os
import sys

from neo4j import GraphDatabase

# Neo4j 连接配置
URI = "bolt://127.0.0.1:7687"
AUTH = ("neo4j", os.environ.get("NEO4J_PASSWORD", "Fassiwell0."))
DATABASE = "neo4j"

# 枚举 name 映射
NAME_MAP = {
    "ID_TYPES": "证件类型",
    "LX_SZBZ": "补助标准",
    "LB_JBXX": "信访类型",
    "QBFSF": "清费状态",
    "BZ_BXPF": "保险赔付",
    "FL_NYJX": "农业机械类型",
    "FL_XB": "性别",
    "LX_SBXZ": "社保险种",
    "MC_MZ": "民族",
    "MC_GJ": "国籍",
    "FL_ZZMM": "政治面貌",
    "FL_ZJXY": "宗教信仰",
    "FL_BYZK": "兵役状况",
    "MC_XL": "学历",
    "ZY_XL": "专业学历",
    "MC_XW": "学位",
    "MC_CYZK": "职业状况",
    "LB_ZY": "职业类别",
    "MC_ZY": "职业名称",
    "LB_GW": "岗位类别",
    "LB_HK": "户口类型",
    "DM_HJDSSX": "行政区划代码",
    "BS_HJZX": "户籍注销类型",
    "LX_SLSSJB": "受理诉求级别",
    "LB_JZ": "救助类型",
    "FS_JZ": "发放形式",
    "YY_ZP": "援助类型",
    "CAR_GCORJK": "国产/进口",
    "LX_CAR": "车辆类型",
    "YY_SW": "死亡原因",
    "ZK_JK": "健康状况",
    "MC_CJDJ": "残疾等级",
    "DM_LXDHGJ": "联系电话国家代码",
    "MC_SSQX": "省市区县",
    "LB_LTXRY": "老龄退休人员类型",
}

# 枚举 standard 映射
STANDARD_MAP = {
    "ID_TYPES": "WS/T 364.3",
    "LX_SZBZ": "业务标准",
    "LB_JBXX": "业务标准",
    "QBFSF": "业务标准",
    "BZ_BXPF": "业务标准",
    "FL_NYJX": "业务标准",
    "FL_XB": "GB/T 2261.1",
    "LX_SBXZ": "业务标准",
    "MC_MZ": "GB/T 3304",
    "MC_GJ": "GB/T 2659",
    "FL_ZZMM": "GB/T 4762",
    "FL_ZJXY": "GA 214.12",
    "FL_BYZK": "GA/T 2000.36",
    "MC_XL": "GB/T 4658",
    "ZY_XL": "业务标准",
    "MC_XW": "GB/T 4881",
    "MC_CYZK": "业务标准",
    "LB_ZY": "GB/T 6565",
    "MC_ZY": "GB/T 6565",
    "LB_GW": "业务标准",
    "LB_HK": "业务标准",
    "DM_HJDSSX": "GB/T 2260",
    "BS_HJZX": "业务标准",
    "LX_SLSSJB": "业务标准",
    "LB_JZ": "业务标准",
    "FS_JZ": "业务标准",
    "YY_ZP": "业务标准",
    "CAR_GCORJK": "业务标准",
    "LX_CAR": "GB/T 3730.1",
    "YY_SW": "业务标准",
    "ZK_JK": "业务标准",
    "MC_CJDJ": "GB/T 26341",
    "DM_LXDHGJ": "ITU-T E.164",
    "MC_SSQX": "GB/T 2260",
    "LB_LTXRY": "业务标准",
}


def get_name_from_code(code: str) -> str:
    """根据枚举 code 返回中文名称。"""
    return NAME_MAP.get(code, code)


def get_standard_from_code(code: str) -> str:
    """根据枚举 code 返回标准依据。"""
    return STANDARD_MAP.get(code, "业务标准")


def find_enum_values_json() -> str:
    """查找 enum_values.json 的路径。"""
    candidates = [
        "plugin/skills/dg-rules/references/enum_values.json",
        "enum_values.json",
    ]
    for path in candidates:
        if os.path.exists(path):
            return path
    raise FileNotFoundError(
        "enum_values.json not found. Searched: " + ", ".join(candidates)
    )


def import_enums(codes: list[str] | None = None, dry_run: bool = False) -> int:
    """导入枚举节点到 Neo4j。返回导入的节点数量。"""
    json_path = find_enum_values_json()
    with open(json_path, "r", encoding="utf-8") as f:
        enum_data = json.load(f)

    if codes:
        # 过滤只保留指定的枚举
        enum_data = {k: v for k, v in enum_data.items() if k in codes}

    driver = GraphDatabase.driver(URI, auth=AUTH)

    imported = 0
    with driver.session(database=DATABASE) as session:
        for code, values in enum_data.items():
            name = get_name_from_code(code)
            standard = get_standard_from_code(code)
            value_count = len(values)

            cypher = """
            MERGE (e:EnumCategory {code: $code})
            SET e.name = $name,
                e.standard = $standard,
                e.value_count = $value_count
            RETURN e.code AS code
            """
            result = session.run(
                cypher,
                code=code,
                name=name,
                standard=standard,
                value_count=value_count,
            )
            record = result.single()
            if record:
                print(
                    f"  [{record['code']}] name={name}, standard={standard}, "
                    f"values={value_count}"
                )
                imported += 1

    driver.close()
    return imported


def main():
    parser = argparse.ArgumentParser(
        description="从 enum_values.json 导入 EnumCategory 节点到 Neo4j"
    )
    parser.add_argument(
        "--codes",
        type=str,
        default=None,
        help="逗号分隔的枚举 code 列表，如 FL_XB,MC_MZ",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="仅打印，不写入 Neo4j",
    )
    args = parser.parse_args()

    codes = None
    if args.codes:
        codes = [c.strip() for c in args.codes.split(",") if c.strip()]
        print(f"Importing enums: {', '.join(codes)}")
    else:
        print("Importing all enums (35 total)")

    if args.dry_run:
        print("[DRY RUN] No changes written to Neo4j")
        return

    imported = import_enums(codes=codes)
    print(f"Created {imported} EnumCategory nodes")


if __name__ == "__main__":
    main()
