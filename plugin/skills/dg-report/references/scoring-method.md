# 质量报告评分方法

## 评分算法

### 单规则通过率

```
pass_rate = max(0, 1 - error_count / total_count)
```

- `error_count = 0` → 通过（绿色标记 ✅）
- `error_count > 0` → 未通过（红色标记 ⚠️）

### 维度评分

```
dimension_score = passed_count / executed_count * 100
```

- 仅计算已执行的规则（pending 规则不参与）
- 维度无已执行规则时显示「待执行」

### 综合评分

```
overall = avg(all dimension_scores)
```

- 仅计算有评分的维度
- 所有维度都 pending 时显示「待执行」

## 输出格式

### 计划模式（无执行结果）

```
规范性: ░░░░░░░░░░░░░░░░░░░░ 待执行 (12 条规则)
唯一性: ░░░░░░░░░░░░░░░░░░░░ 待执行 (3 条规则)
```

### 执行模式（有结果）

```
📊 六性综合评分：85.3%
  ██████████████████████████████████████████░░░░░░░░░

规范性: ████████████████░░░░ 83.3% (10/12 条通过)
唯一性: ████████████████████ 100.0% (3/3 条通过)
```

### 进度条算法

```
bar_len = 20（维度）/ 50（综合）
filled = int(score / 100 * bar_len)
bar = "█" * filled + "░" * (bar_len - filled)
```

## 输出文件

### 规则明细 CSV

`output/reports/<table>/starrocks_report.csv`

| 列 | 说明 |
|----|------|
| table_name | 表名 |
| stage | 阶段编号 |
| dimension | 维度 |
| rule_name | 规则名 |
| field_name | 字段名 |
| rule_desc | 规则描述 |
| total_count | 总记录数 |
| error_count | 错误记录数 |
| threshold | 阈值 |
| status | pass / fail / pending |

### 评分摘要 CSV

`output/reports/<table>/starrocks_scores.csv`

| 列 | 说明 |
|----|------|
| dimension | 维度名 |
| stage | 阶段 |
| total_rules | 规则总数 |
| executed | 已执行数 |
| passed | 通过数 |
| score | 评分百分比 |

末行为综合评分汇总行。

## 阶段分类

| 阶段 | 包含维度 |
|------|---------|
| 阶段一 | 规范性 (Validity) + 唯一性 (Uniqueness) |
| 阶段二 | 完整性 (Completeness) + 一致性 (Consistency) |
| 阶段三 | 准确性 (Accuracy) |
| 未归类 | 及时性 (Timeliness) — 当前未启用 |

## 分数段说明

| 分数 | 评级 | 含义 |
|------|------|------|
| ≥ 95% | 🏆 优秀 | 数据质量很高 |
| 80-94% | ✅ 良好 | 部分问题需要关注 |
| 60-79% | ⚠️ 一般 | 需要制定整改计划 |
| < 60% | ❌ 较差 | 需要优先治理 |
