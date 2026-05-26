# 枚举值图谱设计方案

## 目标

将 `funcation_udfs_new.sql` 中的枚举值导入 Neo4j 图谱，供 dg-query skill 查询枚举值。

## 图谱结构

### 节点类型

**EnumCategory（枚举类别）**

| 属性 | 类型 | 说明 |
|------|------|------|
| name | string | 枚举名称（用于匹配） |
| code | string | 枚举唯一标识 |
| standard | string | 标准号（如 GB/T 2261.1） |
| value_count | int | 枚举值数量 |
| values | list | 枚举值数组 |

示例：
```json
{
  "name": "性别",
  "code": "FL_XB",
  "standard": "GB/T 2261.1",
  "value_count": 3,
  "values": ["男性", "女性", "未说明的性别"]
}
```

### 关系类型

**ENUM_TYPE_OF**

```
(Field) -[:ENUM_TYPE_OF]-> (EnumCategory)
```

表示该字段引用此枚举类别。

## 匹配规则

**自动匹配**：Field.business_term 包含 EnumCategory.name → 建立关系

示例：
- Field.business_term = "性别" → 匹配 EnumCategory.name = "性别"
- Field.business_term = "新生儿性别" → 匹配 EnumCategory.name = "性别"

**匹配不上的枚举**：跳过，只建节点不建关系

## 导入流程

### Phase 1：试点验证
1. 导入 2 个 EnumCategory 节点（性别、民族）
2. 批量匹配 Field → 建立关系
3. 验证 dg-query 可正确查询枚举值

### Phase 2：批量导入
1. 导入剩余 33 个 EnumCategory 节点
2. 批量匹配 Field → 建立关系（匹配不上的跳过）
3. 完整验证

## 实现步骤

1. 编写 Python 脚本从 `enum_values.json` 读取枚举值
2. 生成 Cypher 语句创建 EnumCategory 节点
3. 生成 Cypher 语句创建 ENUM_TYPE_OF 关系
4. 在 dg-query skill 增加查询枚举值的工具
5. 试点验证

## 数据来源

- 枚举值来源：`plugin/skills/dg-rules/references/enum_values.json`
- 共 35 个枚举分类

## 枚举分类清单

| code | name | standard | value_count |
|------|------|----------|-------------|
| ID_TYPES | 证件类型 | WS/T 364.3 | 5 |
| LX_SZBZ | 补助标准 | 业务标准 | 2 |
| LB_JBXX | 信访类型 | 业务标准 | 4 |
| QBFSF | 清费状态 | 业务标准 | 2 |
| BZ_BXPF | 保险赔付 | 业务标准 | 3 |
| FL_NYJX | 农业机械类型 | 业务标准 | 6 |
| FL_XB | 性别 | GB/T 2261.1 | 3 |
| LX_SBXZ | 社保险种 | 业务标准 | 8 |
| MC_MZ | 民族 | GB/T 3304 | 56 |
| MC_GJ | 国籍 | GB/T 2659 | 249 |
| FL_ZZMM | 政治面貌 | GB/T 4762 | 12 |
| FL_ZJXY | 宗教信仰 | GA 214.12 | 10 |
| FL_BYZK | 兵役状况 | GA/T 2000.36 | 11 |
| MC_XL | 学历 | GB/T 4658 | 39 |
| ZY_XL | 专业学历 | 业务标准 | 1055 |
| MC_XW | 学位 | GB/T 4881 | 4 |
| MC_CYZK | 职业状况 | 业务标准 | 13 |
| LB_ZY | 职业类别 | GB/T 6565 | 8 |
| MC_ZY | 职业名称 | GB/T 6565 | 508 |
| LB_GW | 岗位类别 | 业务标准 | 3 |
| LB_HK | 户口类型 | 业务标准 | 8 |
| DM_HJDSSX | 行政区划代码 | GB/T 2260 | 3524 |
| BS_HJZX | 户籍注销类型 | 业务标准 | 12 |
| LX_SLSSJB | 受理诉求级别 | 业务标准 | 8 |
| LB_JZ | 救助类型 | 业务标准 | 20 |
| FS_JZ | 发放形式 | 业务标准 | 4 |
| YY_ZP | 援助类型 | 业务标准 | 9 |
| CAR_GCORJK | 国产/进口 | 业务标准 | 2 |
| LX_CAR | 车辆类型 | GB/T 3730.1 | 118 |
| YY_SW | 死亡原因 | 业务标准 | 40 |
| ZK_JK | 健康状况 | 业务标准 | 4 |
| MC_CJDJ | 残疾等级 | GB/T 26341 | 28 |
| DM_LXDHGJ | 联系电话国家代码 | ITU-T E.164 | 12 |
| MC_SSQX | 省市区县 | GB/T 2260 | 3236 |
| LB_LTXRY | 老龄退休人员类型 | 业务标准 | 11 |
