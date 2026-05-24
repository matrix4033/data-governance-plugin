---
name: dg-rules
version: 2.0.0
description: 当用户要求生成质检规则、六性质检规则时使用。
             触发词：生成规则、质检规则、六性质检。
             知识图谱驱动，生成带业务语义标注的规则 CSV。
context: fork
agent: dg-rules-agent
---

# Data Governance: Rule Generation

## 做什么

接收表名，查询知识图谱获取字段元数据，生成带 `business_justification` 的质检规则 CSV。

## 输入

- `table_name`（必填）: 物理表名
- `dialect`（可选）: SQL 方言，默认 `starrocks`

## 输出

- **扩展 CSV**: `output/rules/<table>/<dialect>_<dimension>.csv`
  - 新增 `business_justification` 列
- **规则摘要**: 规则总数、维度分布
- **审查报告**: rules-reviewer 质量审查结论

## 错误处理

- Neo4j 不可用: 降级提示
- 生成失败: 返回具体错误信息

## 参考资源（按需 Read）

- `references/rules-reference.md` — 六维规则数据表（阈值、规则类型）
