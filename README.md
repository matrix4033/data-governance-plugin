# Data Governance Plugin

数据治理全流程插件：元数据查询 + 六性质检规则生成 + SQL 转换 + 检查执行 + 质量报告。

## 功能概览

```mermaid
graph LR
    A[元数据查询] --> B[规则生成]
    B --> C[规则转SQL]
    C --> D[执行检查]
    D --> E[质量报告]
    style A fill:#4A90D9,color:#fff
    style B fill:#50C878,color:#fff
    style C fill:#F5A623,color:#fff
    style D fill:#D0021B,color:#fff
    style E fill:#7B68EE,color:#fff
```

| 步骤 | 技能 | 说明 |
|------|------|------|
| ① | `dg-query` | 查询 Neo4j 元数据（表结构/字段搜索/血缘追溯） |
| ② | `dg-rules` | 基于字段元数据生成五维质检规则 |
| ③ | `dg-convert` | 规则 CSV 转可执行 SQL |
| ④ | `dg-run` | 执行检查（默认 dry-run） |
| ⑤ | `dg-report` | 生成质量评分报告 |

### 六性质检维度

| 维度 | 阶段 | 说明 |
|------|------|------|
| **规范性 (Validity)** | 阶段一 | 字段值格式、枚举值、空字符串检查 |
| **唯一性 (Uniqueness)** | 阶段一 | 主键/候选键唯一性检查 |
| **完整性 (Completeness)** | 阶段二 | 核心/非核心字段空值率检查 |
| **一致性 (Consistency)** | 阶段二 | 字段间逻辑关系、枚举值合法性检查 |
| **准确性 (Accuracy)** | 阶段三 | 记录数量级、异常数据、测试数据检测 |

## 前提条件

- **Python 3.9+**，推荐使用 conda 环境
- **可选：Neo4j 数据库**（用于元数据查询，非六性质检必需）

### 快速创建 conda 环境

如果其他机器没有 `work-env` 环境，执行：

```bash
# 创建并激活环境
conda create -n work-env python=3.11 -y
conda activate work-env

# 安装依赖
pip install neo4j mcp pymysql
```

### 依赖安装

```bash
# 核心依赖
pip install neo4j mcp

# 执行检查（可选，需要连接数据库时）
pip install pymysql
```

## 安装方式

### 方式一：Git Marketplace 安装（推荐）

在 `~/.claude/settings.json` 中添加：

```json
"extraKnownMarketplaces": {
  "data-governance": {
    "source": {
      "source": "git",
      "url": "https://github.com/matrix4033/data-governance-plugin.git"
    }
  }
}
```

然后在 Claude Code 中执行：

```
/reload-plugins
/plugin install data-governance
```

### 方式二：克隆到本地

```bash
git clone https://github.com/matrix4033/data-governance-plugin.git
cd data-governance-plugin
claude
```

根目录的 `.claude-plugin/plugin.json` 会自动发现插件。

### 方式三：添加到其他项目

在项目的 `.claude/settings.local.json` 中：

```json
{
  "plugins": ["/path/to/data-governance-plugin/plugin"]
}
```

### 旧版插件迁移

如果您已安装旧版插件，请执行以下步骤更新：

```bash
cd /path/to/data-governance-plugin

# 1. 拉取最新代码
git pull origin main

# 2. 删除旧版生成的 .mcp.json（如果存在且不在 git 中）
#    新版 .mcp.json 由 git 统一管理
git checkout .mcp.json  # 确保使用 git 版本的 .mcp.json

# 3. 重新安装依赖
pip install neo4j mcp

# 4. 重启 Claude Code
```

如果 `.mcp.json` 存在合并冲突，请删除本地文件后 `git checkout .mcp.json`。

## 环境变量

| 变量 | 描述 | 默认值 |
|------|------|--------|
| `DG_PYTHON` | Python 解释器路径 | 自动探测 |
| `NEO4J_HOST` | Neo4j 主机地址 | `127.0.0.1` |
| `NEO4J_PORT` | Neo4j 端口 | `7687` |
| `NEO4J_USER` | Neo4j 用户名 | `neo4j` |
| `NEO4J_PASSWORD` | Neo4j 密码 | （空） |
| `NEO4J_DATABASE` | Neo4j 数据库 | `neo4j` |

推荐在 `~/.claude/settings.json` 的 `env` 段配置（`.mcp.json` 已加入 git 跟踪，请勿在其中明文写入密码）：

```json
{
  "env": {
    "DG_PYTHON": "/opt/anaconda3/envs/work-env/bin/python",
    "NEO4J_PASSWORD": "your-password"
  }
}
```

**注意**：`NEO4J_PASSWORD` 会通过环境变量传递给 MCP 服务器，无需在 `.mcp.json` 中配置。

## 快速验证

安装完成后，运行以下命令验证：

```bash
# 1. 检查 MCP 服务器连接
claude mcp list

# 2. 验证 dg-builder（无需 Neo4j）
claude mcp get dg-builder

# 3. 验证 dg-neo4j（需要 Neo4j 运行）
claude mcp get dg-neo4j

# 4. 环境检查
bash plugin/scripts/setup_mcp.sh
```

## 技能与 Agent

### Skills（技能）

| 技能 | 触发词示例 | 说明 |
|------|-------------|------|
| `dg-query` | "检索字段"、"查表结构"、"字段详情" | 查询 Neo4j 元数据 |
| `dg-rules` | "生成规则"、"质检规则"、"跑六性" | 生成六性质检规则 |
| `dg-convert` | "转SQL"、"转换规则" | 规则 CSV 转 SQL |
| `dg-run` | "执行检查"、"跑检查"、"dry-run" | 执行质检 SQL |
| `dg-report` | "生成报告"、"质量报告"、"质检报告" | 生成质量评分 |

### Agent

| Agent | 触发词 | 说明 |
|-------|---------|------|
| `rules-reviewer` | "审查规则"、"review rules" | 检查规则质量和完整性 |

使用示例：
```
# 使用 skill
/plugin dg-rules 生成 T_USER 表的规则

# 使用 agent
/plugin rules-reviewer 审查 T_USER 的规则
```

## 使用流程

### 1. 查询元数据（可选）

```
查一下 T_CUSTOMER 表结构
```

若配置了 Neo4j，自动返回字段列表、业务术语和血缘关系。

### 2. 生成质检规则

```
给 T_CUSTOMER 生成六性质检规则
```

自动根据字段元数据生成规则 CSV。可指定维度：

```
只生成规范性和唯一性检查
```

### 3. 审查规则（可选）

```
审查 T_CUSTOMER 的规则质量
```

通过内置 `rules-reviewer` agent 自动检查规则完整性和阈值合理性。

### 4. 转换规则为 SQL

```
将 T_CUSTOMER 的规则转为 SQL
```

CSV → SQL，每条规则生成 4 段 SQL（全量/错误量/明细/插入错误表）。

### 5. 执行检查

```
跑一下 T_CUSTOMER 的检查
```

默认 dry-run，确认后自动执行。需提供数据库连接配置：

```json
{
  "default": {
    "host": "127.0.0.1",
    "port": 9030,
    "user": "root",
    "password": "",
    "database": "base_zrr_decode"
  }
}
```

将此配置保存为 `config/db_config.json`，执行检查时指定路径。

### 6. 生成质量报告

```
生成 T_CUSTOMER 的质量报告
```

支持计划模式（未执行）和执行模式（有结果）。

## 项目结构

```
data-governance-plugin/
├── .mcp.json                    # MCP 服务器配置（git 跟踪）
├── .claude-plugin/
│   ├── plugin.json              # 插件清单（本地自动发现）
│   └── marketplace.json         # 市场发现配置
├── plugin/
│   ├── .claude-plugin/
│   │   ├── plugin.json          # 插件清单（分发安装）
│   │   └── marketplace.json     # 安装后市场元数据
│   ├── agents/
│   │   └── rules-reviewer.md    # 规则审查 agent
│   ├── scripts/
│   │   ├── mcp_neo4j.py         # Neo4j 元数据查询 MCP
│   │   ├── mcp_builder.py        # 六性质检 MCP
│   │   ├── mcp_wrapper.sh        # MCP 包装脚本
│   │   ├── setup_mcp.sh          # 环境检查脚本
│   │   ├── config.json           # Builder 配置
│   │   └── builder/              # 规则引擎模块
│   └── skills/
│       ├── dg-query/            # 元数据查询技能
│       ├── dg-rules/            # 规则生成技能
│       ├── dg-convert/          # 规则转 SQL 技能
│       ├── dg-run/              # 执行检查技能
│       └── dg-report/           # 质量报告技能
└── README.md
```

## MCP 服务器

### dg-neo4j（5 工具）

| 工具 | 说明 |
|------|------|
| `check_connection` | 测试 Neo4j 连通性 |
| `get_graph_overview` | 图谱概览统计 |
| `search_metadata` | 元数据搜索（keyword/attribute/exact） |
| `get_node_details` | 节点详情及邻居 |
| `get_lineage` | 血缘追溯（业务/技术） |

无 Neo4j 时自动降级为中文友好提示，不影响其他功能。

### dg-builder（4 工具）

| 工具 | 说明 |
|------|------|
| `generate_rules` | 生成六性质检规则 |
| `convert_rules` | CSV 规则转 SQL |
| `run_checks` | 执行检查（默认 dry-run） |
| `generate_report` | 生成质量报告 |

## 输出目录

所有输出文件默认保存在 `/tmp/data-governance-output/`：

```
/tmp/data-governance-output/
├── rules/<table>/            # 规则 CSV
├── sqls/<table>/             # 转换后的 SQL
├── results/<table>/          # 执行结果
└── reports/<table>/          # 质量报告
```

可通过 `plugin/scripts/config.json` 中 `output_dir` 修改。

## 许可证

MIT
