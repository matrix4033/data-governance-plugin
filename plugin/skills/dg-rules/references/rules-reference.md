# 六性质检规则参考

## 维度详解

### 规范性 (Validity)

检查字段值是否符合格式要求。

| 规则类型 | 说明 | 示例字段 | 阈值 |
|---------|------|---------|------|
| 枚举值检查 | 值必须在允许列表中 | GENDER → [0,1,2,9] | 0.1 |
| 非空字符串 | 文本字段不能为空字符串或纯空格 | NAME | 0.1 |
| 格式校验 | 身份证号、日期等格式 | ID_NO (18位) | 0.05 |

**典型SQL**：`WHERE field = '' OR field IS NULL`

### 唯一性 (Uniqueness)

检查主键或候选键是否唯一。

| 规则类型 | 说明 | 阈值 |
|---------|------|------|
| 主键唯一 | 主键字段无重复值 | 0.0 |
| 联合唯一 | 组合键无重复 | 0.0 |

**典型SQL**：`WHERE field IN (SELECT field FROM table GROUP BY field HAVING COUNT(1) > 1)`

### 完整性 (Completeness)

检查字段空值率是否在可接受范围内。

| 规则类型 | 说明 | 阈值 |
|---------|------|------|
| 核心字段 | PERSION_ID/ID_NO/NAME 等 | ≤ 0.05 (5%) |
| 非核心字段 | 其他字段 | ≤ 0.3 (30%) |
| 记录数检查 | 表不应为空 | 0.0 |

**典型SQL**：`WHERE field IS NULL`

### 一致性 (Consistency)

检查字段间逻辑关系和字段值是否符合国家标准。

| 规则类型 | 说明 | 示例 |
|---------|------|------|
| 枚举值标准 | 对照国标检查字段值 | GENDER → GB/T 2261.1 |
| 跨字段逻辑 | 两个字段值逻辑一致 | 身份证号中的出生日期 = BIRTH_DATE |
| 业务规则 | 业务约束条件 | 日期不能晚于当前日期 |

**参考标准**：
- GB/T 2261.1 — 性别代码
- GB/T 3304 — 民族代码
- WS/T 364.3 — 证件类型代码
- GB/T 2261.2 — 婚姻状况代码

### 准确性 (Accuracy)

检查数据质量是否在合理范围内。

| 规则类型 | 说明 | 阈值 |
|---------|------|------|
| 记录数量级 | 表记录数应在合理范围 | 0.0 |
| 测试数据检测 | 检出测试/示例数据 | 0.0 |
| 数据分布 | 字段值分布是否异常 | 0.1 |

**测试关键词检测**：`测试`、`TEST`、`test`、`示例`、`SAMPLE`、`demo`、`DEMO`、`0000`、`1111`、`XXXX`

## 规则 CSV 格式

```csv
id,table_name,field_name,stage,dimension,rule_name,rule_desc,check_condition,threshold,enabled
,T_CUSTOMER,PERSION_ID,1,validity,TEXT_PERSION_ID,文本字段 自然人唯一标识 不能为空字符串或NULL,`PERSION_ID` = '' OR `PERSION_ID` IS NULL,0.1,true
,T_CUSTOMER,PERSION_ID,1,uniqueness,PK_UNIQUE_PERSION_ID,主键 自然人唯一标识 必须唯一,`PERSION_ID` IN (SELECT `PERSION_ID` FROM base_zrr_decode.T_CUSTOMER GROUP BY `PERSION_ID` HAVING COUNT(1) > 1),0.0,true
```

## 命名规范

规则名称采用 `{DIMENSION}_{FIELD}` 格式：

| 前缀 | 维度 |
|------|------|
| `TEXT_` | 规范性 (文本字段) |
| `ENUM_` | 规范性 (枚举字段) |
| `PK_UNIQUE_` | 唯一性 (主键) |
| `CORE_NULL_` | 完整性 (核心字段空值) |
| `NONCORE_NULL_` | 完整性 (非核心字段空值) |
| `RECORD_COUNT` | 完整性 (记录数) |
| `ENUM_` | 一致性 (枚举值) |
| `RANGE_` | 准确性 (数量级) |
| `TEST_DATA_` | 准确性 (测试数据) |
