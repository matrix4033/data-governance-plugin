# 枚举值图谱导入实施计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 将枚举值导入 Neo4j 图谱，创建 EnumCategory 节点和 ENUM_TYPE_OF 关系，并在 dg-query 中增加查询枚举的工具。

**Architecture:**
- Python 脚本读取 `enum_values.json`，生成 Cypher 语句导入 EnumCategory 节点
- 批量匹配 Field.business_term 包含 EnumCategory.name，建立 ENUM_TYPE_OF 关系
- 在 mcp_neo4j.py 中增加 `get_enum_values` 和 `search_enums` 工具

**Tech Stack:** Python, Neo4j, FastMCP

---

## 文件结构

```
scripts/
  import_enum_nodes.py    # 新建：导入 EnumCategory 节点
  import_enum_rels.py     # 新建：建立 ENUM_TYPE_OF 关系

plugin/scripts/
  mcp_neo4j.py           # 修改：增加枚举查询工具

plugin/skills/
  dg-query/
    SKILL.md             # 修改：增加枚举查询触发词
```

---

## Task 1: 备份图谱

**Files:**
- Test: 无

- [ ] **Step 1: 检查 Neo4j Docker 容器名称**

Run: `docker ps --format "{{.Names}}" | grep neo4j`
Expected: neo4j 容器名称

- [ ] **Step 2: 备份图谱**

Run: `docker exec <neo4j-container> neo4j-admin dump --database=neo4j --to=/backups/graph_before_$(date +%Y%m%d).dump`
Expected: 备份文件创建成功

- [ ] **Step 3: 验证备份存在**

Run: `docker exec <neo4j-container> ls -la /backups/`
Expected: 列出备份文件

---

## Task 2: 创建导入 EnumCategory 节点脚本

**Files:**
- Create: `scripts/import_enum_nodes.py`
- Test: `scripts/test_import_enum_nodes.py`（可选）

- [ ] **Step 1: 创建 import_enum_nodes.py**

```python
#!/usr/bin/env python3
"""导入 EnumCategory 节点到 Neo4j。"""
import json
import os
from neo4j import GraphDatabase

URI = "bolt://127.0.0.1:7687"
AUTH = ("neo4j", os.environ.get("NEO4J_PASSWORD", "neo4j"))

ENUM_JSON = "plugin/skills/dg-rules/references/enum_values.json"

driver = GraphDatabase.driver(URI, auth=AUTH)

with open(ENUM_JSON, 'r', encoding='utf-8') as f:
    enums = json.load(f)

cypher = """
CREATE (e:EnumCategory {
    name: $name,
    code: $code,
    standard: $standard,
    value_count: $value_count,
    values: $values
})
"""

with driver.session(database="neo4j") as session:
    for code, values in enums.items():
        name = get_name_from_code(code)  # 需要定义
        standard = get_standard_from_code(code)  # 需要定义
        session.run(cypher, name=name, code=code, standard=standard,
                    value_count=len(values), values=values)

driver.close()
```

- [ ] **Step 2: 创建辅助函数**

```python
def get_name_from_code(code: str) -> str:
    """根据 code 返回枚举名称。"""
    names = {
        "FL_XB": "性别",
        "MC_MZ": "民族",
        # ... 35 个映射
    }
    return names.get(code, code)

def get_standard_from_code(code: str) -> str:
    """根据 code 返回标准号。"""
    standards = {
        "FL_XB": "GB/T 2261.1",
        "MC_MZ": "GB/T 3304",
        # ... 35 个映射
    }
    return standards.get(code, "业务标准")
```

- [ ] **Step 3: 运行脚本导入试点枚举（性别、民族）**

Run: `conda activate work-env && python scripts/import_enum_nodes.py --codes FL_XB MC_MZ`
Expected: 2 个节点创建成功

- [ ] **Step 4: 验证节点创建**

Run: `docker exec <neo4j-container> cypher-shell -u neo4j -p <password> "MATCH (e:EnumCategory) RETURN count(e)"`
Expected: 2

- [ ] **Step 5: 提交**

```bash
git add scripts/import_enum_nodes.py
git commit -m "feat: 添加 EnumCategory 节点导入脚本"
```

---

## Task 3: 创建建立 ENUM_TYPE_OF 关系脚本

**Files:**
- Create: `scripts/import_enum_rels.py`

- [ ] **Step 1: 创建 import_enum_rels.py**

```python
#!/usr/bin/env python3
"""批量建立 Field -> EnumCategory 的 ENUM_TYPE_OF 关系。"""
from neo4j import GraphDatabase

URI = "bolt://127.0.0.1:7687"
AUTH = ("neo4j", os.environ.get("NEO4J_PASSWORD", "neo4j"))

driver = GraphDatabase.driver(URI, auth=AUTH)

# 匹配逻辑：Field.business_term 包含 EnumCategory.name
cypher = """
MATCH (f:Field), (e:EnumCategory {code: $code})
WHERE f.business_term CONTAINS $name
CREATE (f)-[:ENUM_TYPE_OF]->(e)
RETURN count(*) AS created
"""

with driver.session(database="neo4j") as session:
    # 试点：性别、民族
    for code, name in [("FL_XB", "性别"), ("MC_MZ", "民族")]:
        result = session.run(cypher, code=code, name=name)
        print(f"{code}: {result.single()['created']} relationships")

driver.close()
```

- [ ] **Step 2: 运行脚本建立试点关系**

Run: `conda activate work-env && python scripts/import_enum_rels.py`
Expected: 打印创建的关系数量

- [ ] **Step 3: 验证关系创建**

Run: `docker exec <neo4j-container> cypher-shell -u neo4j -p <password> "MATCH ()-[r:ENUM_TYPE_OF]->() RETURN count(r)"`
Expected: > 0

- [ ] **Step 4: 提交**

```bash
git add scripts/import_enum_rels.py
git commit -m "feat: 添加 ENUM_TYPE_OF 关系导入脚本"
```

---

## Task 4: 在 mcp_neo4j.py 增加枚举查询工具

**Files:**
- Modify: `plugin/scripts/mcp_neo4j.py`

- [ ] **Step 1: 添加 get_enum_values 工具**

```python
@mcp.tool()
def get_enum_values(code: str) -> str:
    """获取指定枚举的所有值。

    Args:
        code: 枚举代码，如 "FL_XB"

    Returns:
        JSON: {"status": "ok", "data": {"code": "FL_XB", "name": "性别", "values": [...]}}
    """
    driver = get_driver()
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            result = session.run(
                "MATCH (e:EnumCategory {code: $code}) RETURN e.name AS name, e.values AS values",
                code=code
            )
            record = result.single()
            if not record:
                return f'{{"status": "error", "message": "枚举 {code} 不存在"}}'
            return json.dumps({
                "status": "ok",
                "data": {"code": code, "name": record["name"], "values": record["values"]}
            }, ensure_ascii=False)
    finally:
        driver.close()
```

- [ ] **Step 2: 添加 search_enums 工具**

```python
@mcp.tool()
def search_enums(keyword: str) -> str:
    """搜索枚举类别。

    Args:
        keyword: 搜索关键词（匹配 name 或 code）

    Returns:
        JSON: {"status": "ok", "data": [{"code": "...", "name": "...", "value_count": N}, ...]}
    """
    driver = get_driver()
    try:
        with driver.session(database=NEO4J_DATABASE) as session:
            result = session.run(
                """MATCH (e:EnumCategory)
                WHERE e.name CONTAINS $keyword OR e.code CONTAINS $keyword
                RETURN e.code AS code, e.name AS name, e.value_count AS value_count""",
                keyword=keyword
            )
            items = [{"code": r["code"], "name": r["name"], "value_count": r["value_count"]} for r in result]
            return json.dumps({"status": "ok", "data": items}, ensure_ascii=False)
    finally:
        driver.close()
```

- [ ] **Step 3: 测试 get_enum_values**

Run: `conda activate work-env && python -c "from mcp_neo4j import get_enum_values; print(get_enum_values('FL_XB'))"`
Expected: JSON 输出性别枚举值

- [ ] **Step 4: 提交**

```bash
git add plugin/scripts/mcp_neo4j.py
git commit -m "feat: 增加 get_enum_values 和 search_enums 工具"
```

---

## Task 5: 试点验证

**Files:**
- Modify: `plugin/skills/dg-query/SKILL.md`

- [ ] **Step 1: 修改 dg-query SKILL.md 增加枚举查询说明**

在 SKILL.md 中添加：
```markdown
### 5. 查询枚举值

**工具：** `dg-neo4j` → `get_enum_values` / `search_enums`

- `get_enum_values(code: "FL_XB")` — 获取性别枚举的所有值
- `search_enums(keyword: "性别")` — 搜索包含"性别"的枚举
```

- [ ] **Step 2: 验证枚举查询**

Run: `conda activate work-env && python -c "from plugin.scripts.mcp_neo4j import get_enum_values; print(get_enum_values('FL_XB'))"`
Expected: {"status": "ok", "data": {"code": "FL_XB", "name": "性别", "values": ["男性", "女性", "未说明的性别"]}}

- [ ] **Step 3: 提交**

```bash
git add plugin/skills/dg-query/SKILL.md
git commit -m "docs: dg-query 增加枚举查询说明"
```

---

## Task 6: 批量导入剩余枚举

**Files:**
- Modify: `scripts/import_enum_nodes.py`（去除 --codes 参数）

- [ ] **Step 1: 修改 import_enum_nodes.py 支持全量导入**

去除 `--codes` 参数，导入所有 35 个枚举

- [ ] **Step 2: 全量导入**

Run: `conda activate work-env && python scripts/import_enum_nodes.py`
Expected: 35 个节点创建成功

- [ ] **Step 3: 批量建立关系**

Run: `conda activate work-env && python scripts/import_enum_rels.py --all`
Expected: 所有匹配的关系创建成功

- [ ] **Step 4: 验证节点和关系数量**

Run: `docker exec <neo4j-container> cypher-shell -u neo4j -p <password> "MATCH (e:EnumCategory) RETURN count(e) AS cnt, collect(e.code) AS codes"`
Expected: 35 个节点

- [ ] **Step 5: 提交**

```bash
git add scripts/import_enum_nodes.py scripts/import_enum_rels.py
git commit -m "feat: 支持全量导入 35 个枚举"
```

---

## Task 7: 实施后备份

**Files:**
- Test: 无

- [ ] **Step 1: 导出图谱备份**

Run: `docker exec <neo4j-container> neo4j-admin dump --database=neo4j --to=/backups/graph_after_$(date +%Y%m%d).dump`
Expected: 备份文件创建成功

- [ ] **Step 2: 提交**

```bash
git add -A
git commit -m "feat: 完成枚举值图谱导入"
git push
```

---

## 实施后检查清单

- [ ] EnumCategory 节点数量 = 35
- [ ] ENUM_TYPE_OF 关系数量 > 0
- [ ] get_enum_values("FL_XB") 返回正确的枚举值
- [ ] search_enums("性别") 返回 EnumCategory
- [ ] dg-query SKILL.md 包含枚举查询说明
