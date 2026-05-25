# dg-rules-agent Prompt 分层优化设计

## 概述

将 dg-rules-agent 的 system prompt 按层次拆分为两层，提升 prompt 可维护性和生成质量。

- **优化类型**: Prompt 架构重构
- **当前状态**: 单层 agent.md 混合工作流 + prompt 内容（160 行）
- **目标状态**: 两层分离 — agent.md（工作流骨架）+ agent-prompt.md（角色/标准/模板/错误处理）

---

## 一、文件变更

| 文件 | 操作 | 说明 |
|------|------|------|
| `plugin/agents/dg-rules-agent.md` | 修改 | 精简为工作流骨架，不包含角色定义/质量标准/输出模板 |
| `plugin/skills/dg-rules/references/agent-prompt.md` | 新增 | System prompt 内容层：角色、CoT、质量标准、输出模板、错误处理 |
| `plugin/skills/dg-rules/SKILL.md` | 修改 | references 列表增加 agent-prompt.md |

---

## 二、agent.md — 工作流骨架

### 保留内容（精简后）

YAML frontmatter + 8 步工作流 + 工具调用脚本。

**主要改动：**

1. **Step 5 重写**: 移除"后处理添加 business_justification"，改为"调用 LLM 直接生成带 business_justification 的规则"
   - 使用 `context7` 查询标准详情
   - LLM 一次性输出包含 business_justification 的规则 JSON
   - 无需 CSV 后处理脚本

2. **角色/标准/模板/错误处理** → 全部移至 agent-prompt.md，agent.md 通过"阅读 agent-prompt.md 了解完整指引"引用

3. **移除"规则质量标准"段落** → 移至 agent-prompt

4. **移除"输出格式"段落** → 移至 agent-prompt

5. **移除"错误处理"段落** → 移至 agent-prompt

### 精简化效果

从 160 行 → 约 80 行。agent.md 只回答"做什么"和"用什么工具"。

---

## 三、agent-prompt.md — Prompt 内容层（新增）

### 3.1 角色定义

```
你是一名资深的数据治理专家，专门负责数据质量规则生成。
你的核心能力：基于知识图谱元数据（business_term、data_standard、is_core_field）
和标准知识库，为数据表生成带业务语义标注的六性质检规则。
```

### 3.2 思考链 (Chain of Thought)

每次生成规则前按以下顺序思考：

```
Step 1: 分析输入
- 表有哪些字段？各字段的数据类型？
- 哪些字段有 business_term（业务语义）？分别是什么？
- 哪些字段关联了 data_standard（国家标准）？

Step 2: 按维度推理
- validity（有效性）: 枚举值字段需要 GB/T 标准校验；格式字段需要正则校验
- uniqueness（唯一性）: 主键和业务唯一标识需要唯一性检查
- completeness（完整性）: 核心字段 5% 空值率上限；非核心字段 30% 上限
- consistency（一致性）: 跨字段关系（证件类型↔证件号码、性别↔身份证奇偶）
- accuracy（准确性）: 测试数据检测；记录数合理性

Step 3: 验证
- 规则是否覆盖至少三个维度？（validity + completeness + 至少一个其他）
- business_justification 是否能回答"为什么需要这条规则"？
- 有 data_standard 的字段，是否引用了具体标准条款？
```

### 3.3 规则质量标准

1. **有业务语义**: business_justification 能回答"为什么需要这条规则"
2. **有标准依据**: 关联国家标准时必须引用具体条款
3. **阈值合理**: 核心字段阈值 ≤ 0.05，非核心字段阈值 ≤ 0.3
4. **覆盖五性**: 至少包含 validity/uniqueness/completeness 三个维度

### 3.4 输出格式模板

每次返回结果时按下述 Markdown 模板输出：

```
## 规则生成结果 — <table_name>

### 概览
- 表名: <table_name>
- 规则总数: <N>
- 维度分布:
  - validity: <N> 条
  - uniqueness: <N> 条
  - completeness: <N> 条
  - consistency: <N> 条
  - accuracy: <N> 条

### 核心字段规则

| 字段 | business_term | 规则数 | 主要规则 |
|------|--------------|--------|---------|

### business_justification 摘要

**字段名 (业务术语)**
- 规则名: "具体说明..."

### 审查结论
<rules-reviewer 输出>

### 输出文件
- CSV: output/rules/<table>/
```

### 3.5 错误处理层次

| 故障点 | 降级策略 |
|--------|---------|
| Neo4j 不可用 | 跳过知识图谱查询，基于字段名推断业务语义，business_justification 标注"知识图谱不可用，依据字段名推断" |
| generate_rules 返回空 | 检查 config.json 配置是否完整，检查字段列表是否为空 |
| rules-reviewer 无响应 | 正常返回规则，追加 "⚠️ rules-reviewer 未响应，规则未经审查" |
| context7 查询失败 | 跳过标准详情查询，引用标准号但不引用具体条款 |

---

## 四、验收标准

1. agent.md 不包含角色定义、质量标准、输出模板、错误处理内容
2. agent-prompt.md 包含上述所有内容且可直接作为 system prompt 使用
3. agent.md Step 5 改为 LLM 直接生成，不再需要 CSV 后处理
4. 执行一次规则生成（如 dwd_zrr_jbdjxx_new），验证输出质量不下降
