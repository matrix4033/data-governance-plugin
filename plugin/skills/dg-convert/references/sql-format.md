# SQL 转换格式参考

## 单条规则输出格式

每条规则生成 4 段 SQL，以 `---` 分隔：

```sql
-- [N] RULE_NAME (FIELD_NAME)
-- ① 全量数据量
SELECT COUNT(1) AS total_count
FROM base_zrr_decode.T_CUSTOMER;
---
-- ② 问题数据量
SELECT COUNT(1) AS error_count
FROM base_zrr_decode.T_CUSTOMER
WHERE condition;
---
-- ③ 问题数据明细
SELECT *
FROM base_zrr_decode.T_CUSTOMER
WHERE condition
LIMIT 100;
---
-- ④ 插入错误表
INSERT INTO sjjt_error.error_info (table_name, field_name, rule_name, error_count, check_time)
SELECT 'T_CUSTOMER', 'PERSION_ID', 'TEXT_PERSION_ID', COUNT(1), NOW()
FROM base_zrr_decode.T_CUSTOMER
WHERE condition;
=====
```

## 规则间分隔

规则之间用 `=====`（5个等号）分隔。

## 整体 SQL 文件结构

```sql
-- [1] TEXT_PERSION_ID (PERSION_ID)
-- ① 全量数据量
SELECT COUNT(1) AS total_count FROM base_zrr_decode.T_CUSTOMER;
---
-- ② 问题数据量
SELECT COUNT(1) AS error_count FROM base_zrr_decode.T_CUSTOMER WHERE `PERSION_ID` = '' OR `PERSION_ID` IS NULL;
---
-- ③ 问题数据明细
SELECT * FROM base_zrr_decode.T_CUSTOMER WHERE `PERSION_ID` = '' OR `PERSION_ID` IS NULL LIMIT 100;
---
-- ④ 插入错误表
INSERT INTO sjjt_error.error_info (table_name, field_name, rule_name, error_count, check_time)
SELECT 'T_CUSTOMER', 'PERSION_ID', 'TEXT_PERSION_ID', COUNT(1), NOW()
FROM base_zrr_decode.T_CUSTOMER WHERE `PERSION_ID` = '' OR `PERSION_ID` IS NULL;
=====
-- [2] PK_UNIQUE_PERSION_ID (PERSION_ID)
-- ① 全量数据量
SELECT COUNT(1) AS total_count FROM base_zrr_decode.T_CUSTOMER;
---
...
=====
```

## 方言支持

当前默认使用 StarRocks 方言。字段引用使用反引号：

| 方言 | 字段引用 | 分页 |
|------|---------|------|
| StarRocks | `` `field` `` | `LIMIT N` |
| MySQL | `` `field` `` | `LIMIT N` |
| PostgreSQL | `"field"` | `LIMIT N` |
| Oracle | `"field"` | `FETCH FIRST N ROWS ONLY` |

## 错误表结构

```sql
CREATE TABLE sjjt_error.error_info (
    id BIGINT AUTO_INCREMENT,
    table_name VARCHAR(100) COMMENT '表名',
    field_name VARCHAR(100) COMMENT '字段名',
    rule_name VARCHAR(100) COMMENT '规则名',
    error_count BIGINT COMMENT '错误数量',
    check_time DATETIME COMMENT '检查时间',
    PRIMARY KEY (id)
);
```

## 输出文件

转换后的 SQL 保存在 `output/sqls/<table>/` 目录下，按维度分文件：

| 文件 | 内容 |
|------|------|
| `starrocks_validity.sql` | 规范性检查 SQL |
| `starrocks_uniqueness.sql` | 唯一性检查 SQL |
| `starrocks_completeness.sql` | 完整性检查 SQL |
| `starrocks_consistency.sql` | 一致性检查 SQL |
| `starrocks_accuracy.sql` | 准确性检查 SQL |
