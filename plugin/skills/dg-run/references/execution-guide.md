# 检查执行参考

## 安全说明

**默认 dry-run**。始终先展示执行计划，经用户确认后才执行。

## db_config.json 格式

```json
{
  "default": {
    "host": "127.0.0.1",
    "port": 9030,
    "user": "root",
    "password": "",
    "database": "base_zrr_decode"
  },
  "test": {
    "host": "127.0.0.1",
    "port": 9030,
    "user": "root",
    "password": "",
    "database": "base_zrr_decode_test"
  }
}
```

多数据源通过 `source` 参数选择，默认使用 `default`。

## 执行模式

| 参数 | 说明 |
|------|------|
| `execute: false` | dry-run 模式，只展示计划 |
| `execute: true` | 实际执行 |
| `source: "test"` | 选择数据源 |
| `db_config: "config/db_config.json"` | 数据库配置文件路径 |

## 执行结果

结果保存在 `output/results/<table>/` 目录：

```
output/results/T_CUSTOMER/
├── starrocks_validity.csv
├── starrocks_uniqueness.csv
├── starrocks_completeness.csv
├── starrocks_consistency.csv
└── starrocks_accuracy.csv
```

每行记录包含：`table_name, rule_name, field_name, total_count, error_count, sample_data`

## Run 只执行为 ①②

默认只执行前两段 SQL：

| 段 | 内容 | 默认执行 |
|----|------|---------|
| ① 全量数据量 | `SELECT COUNT(1)` | ✅ |
| ② 问题数据量 | `SELECT COUNT(1) WHERE condition` | ✅ |
| ③ 明细 | `SELECT * WHERE condition LIMIT 100` | ❌ |
| ④ 插入错误表 | `INSERT INTO error_info` | ❌ |

③ 和 ④ 需要显式指定 `detail: true` 和 `insert: true`。

## 依赖

```bash
pip install pymysql
```
