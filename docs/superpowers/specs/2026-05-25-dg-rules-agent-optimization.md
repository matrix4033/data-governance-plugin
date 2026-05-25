# dg-rules-agent 优化设计文档

## 概述

优化 dg-rules-agent 的规则生成质量。

- **优化类型**: Prompt 增强 + 工作流简化
- **当前状态**: 纯 LLM 流程，Prompt 输出不含 business_justification，Agent 工作流有多余步骤
- **目标状态**: LLM 直接生成带 business_justification 的规则，Agent 工作流精简

---

## 一、Prompt 优化

### 问题

当前 `prompt.md` 输出的 JSON 不含 `business_justification`，需要后续处理补充。

### 修改文件

**`plugin/skills/dg-rules/references/prompt.md`**

#### 1.1 输入部分增强

在 prompt 模板中增加字段的业务语义信息：

```markdown
## 输入信息

- **表名**：{table_name}
- **Schema**：{schema}
- **字段列表**：
{fields}
  - 每个字段包含: name, type, business_term, data_standard, is_core_field
```

Agent 组装 prompt 时，将 `get_table_metadata` 返回的业务语义信息注入到 `{fields}` 占位符中。

#### 1.2 输出部分增强

输出的 JSON 增加 `business_justification` 字段：

```markdown
## 输出格式

每条规则包含：
- `field_name`：字段名
- `stage`：阶段（阶段一 / 阶段二 / 阶段三）
- `rule_name`：规则名称
- `rule_description`：规则描述
- `business_justification`：业务依据（自动生成）
- `remark`：备注

### business_justification 格式

```
业务来源: 知识图谱字段 <field_name>（<business_term>，<data_standard>）
标准依据: <具体标准条款>
生成理由: <为什么生成这条规则>
```

### 示例输出

```json
[
  {
    "field_name": "ID_NO",
    "stage": "阶段一",
    "rule_name": "格式规范",
    "rule_description": "身份证号码必须为18位（数字或末尾X）",
    "business_justification": "业务来源: 知识图谱字段 ID_NO（身份证件号码，GB 11643）\n标准依据: GB 11643-1999《公民身份号码》第5条规定：公民身份号码为18位\n生成理由: 字段在知识图谱中标记为核心字段（is_core_field=true）",
    "remark": "引用标准 GB 11643"
  }
]
```

#### 1.3 规则生成指南增强

在"规则生成指南"末尾新增 business_justification 生成规则 section：

```markdown
### 规则 business_justification 生成规则

1. **枚举值规则**
   - 业务来源: "知识图谱字段 {field_name}（{business_term}，{data_standard}）"
   - 标准依据: "依据 {standard}《{standard_name}》规定：{具体条款}"
   - 生成理由: "字段在知识图谱中关联国家标准"
   - 示例: "业务来源: 知识图谱字段 GENDER（性别，GB/T 2261.1）\n标准依据: GB/T 2261.1-2003《人的性别编码》第3条规定：1(男)/2(女)/0(未说明)/9(未知)\n生成理由: 字段在知识图谱中关联国家标准"

2. **格式规则（身份证）**
   - 业务来源: "知识图谱字段 ID_NO（身份证件号码，GB 11643）"
   - 标准依据: "GB 11643-1999《公民身份号码》规定：公民身份号码为18位或15位"
   - 生成理由: "字段在知识图谱中标记为核心字段（is_core_field=true）"

3. **核心字段非空规则**
   - 业务来源: "知识图谱字段 {field_name}（{business_term}）"
   - 标准依据: "无"
   - 生成理由: "字段在知识图谱中标记为核心字段（is_core_field=true），核心字段不允许缺失"
```

---

## 二、Agent 工作流简化

### 问题

当前 Agent 有 9 个 Step，其中：
- **Step 4（context7 标准查阅）**: 纯 LLM 流程中标准知识已包含在 knowledge 文件中，LLM 自行推断，不需要单独调用 context7
- **Step 6（后处理注解 business_justification）**: Prompt 优化后 LLM 直接生成，后处理不再需要

### 修改文件

**`plugin/agents/dg-rules-agent.md`**

从 9 步简化为 7 步：

```
Step 1: 接收表名 + dialect
Step 2: 调用 dg-neo4j.get_table_metadata 获取字段元数据（含 business_term/data_standard）
Step 3: 读取 knowledge 文件（enums.md / formats.md / templates.md / prompt.md）
Step 4: 组装 Prompt — 将 get_table_metadata 返回的业务语义注入 prompt 模板
Step 5: 调用 LLM 生成规则（直接带 business_justification）
Step 6: 保存 CSV 到 output/rules/<table>/all_rules.csv
Step 7: 调用 rules-reviewer 审查
Step 8: 返回结果
```

---

## 三、文件变更清单

| 文件 | 操作 | 说明 |
|------|------|------|
| `plugin/skills/dg-rules/references/prompt.md` | 修改 | 增强输入/输出，新增 business_justification 生成规则 |
| `plugin/agents/dg-rules-agent.md` | 修改 | 移除 Step 4（context7）和 Step 6（后处理），简化至 7 步 |

注：SKILL.md 已正确引用知识库文件，无需修改。

---

## 四、验收标准

1. Prompt 输出的 JSON 包含 `business_justification` 字段
2. Agent 工作流精简为 7 个 Step（移除 context7 和后处理）
3. 业务人员能直接理解每条规则的生成原因
4. 输出路径与 SKILL.md 声明一致：`output/rules/<table>/all_rules.csv`
