---
name: dg-rules
version: 2.0.0
description: 当用户要求生成质检规则、六性质检规则时使用。
             触发词：生成规则、质检规则、六性质检。
             整合知识库与 LLM，生成高质量数据质量规则。
context: fork
agent: dg-rules-agent
---

# dg-rules

## 概述

本 skill 整合知识库与 LLM，为数据表生成六性质检规则。

## 知识库

- `references/enums.md` — 标准枚举值（GB/T 2261.1、GB/T 3304 等）
- `references/formats.md` — 格式规范（身份证、日期、手机号等）
- `references/templates.md` — 规则模板（一致性校验等）
- `references/prompt.md` — LLM 生成规则 prompt

## 工作流程

1. 读取知识库文件
2. 查询知识图谱获取表结构
3. 组装 prompt 调用 LLM
4. 输出结构化规则

## 输入

- `table_name`（必填）: 物理表名
- `dialect`（可选）: SQL 方言，默认 `starrocks`

## 输出

- **规则 CSV**: `output/rules/<table>/all_rules.csv`
- **规则摘要**: 规则总数、维度分布

## 错误处理

- Neo4j 不可用: 降级提示
- 生成失败: 返回具体错误信息
