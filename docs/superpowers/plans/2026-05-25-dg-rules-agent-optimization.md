# dg-rules-agent 优化实施计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 优化 dg-rules-agent 工作流：移除 context7 和后处理步骤，Agent 直接写入带 business_justification 的 CSV

**架构:** prompt.md 已提前更新（含 business_justification 输出格式和生成规则），仅需将 agent 定义从 9 步精简为 7 步

**Tech Stack:** 纯 Markdown Agent 定义文件

---

### 文件结构

| 文件 | 操作 | 状态 |
|------|------|------|
| `plugin/agents/dg-rules-agent.md` | 修改 | 待修改 |
| `plugin/skills/dg-rules/references/prompt.md` | — | ✅ 已完成 |

---

### Task 1: 简化 agent 工作流

**文件:** `plugin/agents/dg-rules-agent.md`

- [ ] **Step 1: 修改 Agent 工作流**

将 `## 工作流程` 部分从 9 个 Step 精简为 7 个 Step：

**移除的 Step：**
- 原 Step 4（查阅标准 — context7）：LLM 从 prompt.md 知识库自行推断
- 原 Step 6（注解 business_justification）：LLM 直接生成，无需后处理

**整合的 Step：**
- 原 Step 3（分析业务语义）→ 合并到 Step 4（生成规则时 LLM 自动分析）
- 原 Step 5（生成规则）→ 新的 Step 4 直接用 LLM 生成（不再调用 dg-builder.generate_rules）

具体替换内容：

替换原工作流（Step 1-9）：

```
### Step 1: 接收任务
...
### Step 2: 查询知识图谱
...
### Step 3: 分析业务语义
...
### Step 4: 查阅标准（如适用）
...
### Step 5: 生成规则
...
### Step 6: 注解 business_justification
...
### Step 7: 保存文件
...
### Step 8: 调用 rules-reviewer
...
### Step 9: 返回结果
```

为新工作流（Step 1-7）：

````markdown
## 工作流程

### Step 1: 接收任务

从用户输入中提取：
- `table_name`: 物理表名（如 T_CUSTOMER）
- `dialect`: SQL 方言，默认 `starrocks`

### Step 2: 查询知识图谱

调用 `dg-neo4j.get_table_metadata` 获取表的完整字段元数据：

```
get_table_metadata(table_name="T_CUSTOMER")
```

返回字段列表，每个字段包含：
- `business_term`: 业务语义描述（如"身份证号码"）
- `data_standard`: 关联国家标准（如"GB 11643"）
- `is_core_field`: 是否核心字段
- `neighbors`: 关联表信息

### Step 3: 读取知识库

读取 knowledge 文件，用于组装 LLM prompt：

- `references/enums.md` — 标准枚举值
- `references/formats.md` — 格式规范
- `references/templates.md` — 规则模板
- `references/prompt.md` — LLM 生成规则 prompt（主模板）

### Step 4: 组装 Prompt 生成规则

将 Step 2 获取的字段元数据注入 `prompt.md` 模板的占位符：
- `{table_name}` → 表名
- `{schema}` → schema
- `{fields}` → 字段列表（含 business_term, data_standard, is_core_field）

调用 LLM，LLM 根据 prompt.md 的规则生成指南和知识库，直接输出带 `business_justification` 的 JSON 规则数组。

### Step 5: 保存文件

将 LLM 返回的 JSON 规则转换为 CSV，保存到：

```
output/rules/<table>/all_rules.csv
```

CSV 列顺序：`field_name, stage, rule_name, rule_description, business_justification, remark`

### Step 6: 调用 rules-reviewer

调用 rules-reviewer agent 对生成的规则进行审查：

```
@rules-reviewer 审查 T_CUSTOMER 的规则质量
```

### Step 7: 返回结果

向用户返回：
- 规则总数和维度分布
- 每条规则的 business_justification 摘要
- rules-reviewer 的审查结论
- CSV 文件路径
````

- [ ] **Step 2: 更新规则质量标准**

将原有"有标准依据"要求从"必须引用具体条款"放宽为更适用纯 LLM 场景的描述：

替换：
```
2. **有标准依据**: 关联国家标准时必须引用具体条款
3. **阈值合理**: 核心字段阈值 ≤ 0.05，非核心字段阈值 ≤ 0.3
4. **覆盖五性**: 至少包含 validity/uniqueness/completeness 三个维度
```

为：
```
2. **有标准依据**: 关联国家标准时引用具体条款，无标准时标注"无"
3. **阈值合理**: 核心字段阈值 ≤ 0.05，非核心字段阈值 ≤ 0.3
4. **覆盖五性**: 至少包含 validity/uniqueness/completeness 三个维度
```

- [ ] **Step 3: 更新错误处理**

替换：
```
- **context7 查询失败**: 跳过标准查询，`business_justification` 标记"标准查询失败，依据字段名推断"
```

为：
```
- **knowledge 文件缺失**: 跳过该知识库，LLM 依据字段名和业务常识推断
- **LLM 生成失败**: 返回具体错误信息和可能原因
```

- [ ] **Step 4: 验证最终文件**

执行：

```bash
# 检查 agent 定义中不含 context7、generate_rules、后处理关键词
grep -n "context7\|generate_rules\|后处理\|注解 business" plugin/agents/dg-rules-agent.md
```

Expected: 没有找到这些关键词

- [ ] **Step 5: 提交**

```bash
git add plugin/agents/dg-rules-agent.md
git commit -m "refactor: simplify dg-rules-agent workflow to 7 steps

- Remove Step 4 (context7 standard lookup) — LLM infers from knowledge files
- Remove Step 6 (post-processing annotation) — LLM generates business_justification directly
- Replace dg-builder.generate_rules with pure LLM generation
- Update quality criteria and error handling for simplified workflow"
```
