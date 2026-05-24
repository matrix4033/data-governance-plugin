# 六维规则参考数据表

## 阈值标准

| 字段类型 | 维度 | 阈值 | 说明 |
|---------|------|------|------|
| 核心字段 | completeness | ≤ 0.05 | 5% 空值率上限 |
| 非核心字段 | completeness | ≤ 0.30 | 30% 空值率上限 |
| 主键 | uniqueness | 0.0 | 不允许重复 |
| 编码字段 | validity | 0.0 | 不允许为空 |
| 测试数据 | accuracy | 0.0 | 不允许存在 |
| 记录数 | accuracy | > 0 | 表不能为空 |

## 规则类型映射

| 字段后缀/特征 | 推荐规则 | 阈值 | 说明 |
|--------------|---------|------|------|
| 主键字段 | PK_UNIQUE | 0.0 | 主键唯一性 |
| `_ID`, `_CODE` 结尾 | CODE_ | 0.0 | 非空检查 |
| `ID_NO`, 身份证 | FORMAT_ID_NO | 0.05 | 18位正则 |
| `ID_NO`, 身份证 | UNIQUE_ID_NO | 0.0 | 唯一性 |
| `GENDER`, 性别 | ENUM_GENDER | 0.0 | GB/T 2261.1 |
| `BIRTH_DATE` | FORMAT_DATE | 0.05 | 日期格式 |
| `PHONE`, 手机 | FORMAT_PHONE | 0.05 | 11位数字 |
| `EMAIL` | FORMAT_EMAIL | 0.05 | 邮箱格式 |
| `CREATE_TIME`, `UPDATE_TIME` | DATE_ORDER | 0.0 | 时序关系 |
| `START_DATE`, `END_DATE` | DATE_ORDER | 0.0 | 起止日期 |
| 文本字段 | TEXT_ | 0.1 | 非空字符串 |
| `_ID`, `_CODE` 结尾 | ID_CODE_VALID | 0.05 | ID/CODE 非空非零 |
| GENDER + ID_NO 共存 | BIZ_LOGIC | 0.0 | 身份证第17位奇偶性 |

## GB/T 标准参考

| 标准号 | 名称 | 关联字段 |
|--------|------|---------|
| GB 11643 | 公民身份号码 | ID_NO |
| GB/T 2261.1 | 性别代码 | GENDER |
| GB/T 3304 | 民族代码 | ETHNICITY |
| WS/T 364.3 | 证件类型代码 | ID_TYPE |
| GB/T 2261.2 | 婚姻状况代码 | MARITAL_STATUS |

## 一致性规则模板

| 规则类型 | 条件模板 | 说明 |
|---------|---------|------|
| 日期时序 | earlier_field IS NOT NULL AND later_field IS NOT NULL AND earlier_field > later_field | 前日期晚于后日期 |
| 字段依赖 | cond_field IS NOT NULL AND cond_field != '' AND dep_field IS NULL OR dep_field = '' | 条件字段有值时依赖字段不为空 |
| 身份证奇偶 | LENGTH(ID_NO)=18 AND (GENDER='1' AND SUBSTRING(ID_NO,17,1)%2=1 OR GENDER='2' AND SUBSTRING(ID_NO,17,1)%2=0) | 性别与第17位奇偶一致 |

## 准确性规则模板

| 规则类型 | 检测条件 | 说明 |
|---------|---------|------|
| 测试数据 | LIKE '%测试%' OR LIKE '%TEST%' OR LIKE '%示例%' OR LIKE '%demo%' OR LIKE '%0000%' | 含测试关键词 |
| ID/CODE 非空 | IS NOT NULL AND != '' AND != '0' | ID/CODE 字段有效性 |
| 记录数量级 | COUNT(1) BETWEEN min AND max | 数量在合理范围 |
