#!/bin/bash
# MCP Server 包装脚本 —— 自动定位插件目录，避免 ${CLAUDE_PLUGIN_ROOT} 不展开的问题
# 用法: mcp_wrapper.sh <script_name.py>
#
# 可覆盖的环境变量（bash 原生 ${VAR:-default} 支持）：
#   DG_PYTHON      — Python 解释器路径（默认: 自动探测 python3 / python / conda 环境）
#   NEO4J_HOST / NEO4J_PORT / NEO4J_USER / NEO4J_PASSWORD / NEO4J_DATABASE
#   BUILDER_CONFIG / BUILDER_DIR

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PLUGIN_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SCRIPT_NAME="$1"
shift

# 切换到插件根目录
cd "$PLUGIN_ROOT" || exit 1

# Python 解释器（可覆盖）
if [ -n "$DG_PYTHON" ]; then
    PYTHON="$DG_PYTHON"
elif command -v python3 &>/dev/null; then
    PYTHON="python3"
elif command -v python &>/dev/null; then
    PYTHON="python"
else
    echo "ERROR: 未找到 Python 解释器。请设置 DG_PYTHON 环境变量" >&2
    exit 1
fi

# Neo4j 连接配置（用户可通过 export 覆盖）
export NEO4J_HOST="${NEO4J_HOST:-127.0.0.1}"
export NEO4J_PORT="${NEO4J_PORT:-7687}"
export NEO4J_USER="${NEO4J_USER:-neo4j}"
export NEO4J_PASSWORD="${NEO4J_PASSWORD:-}"
export NEO4J_DATABASE="${NEO4J_DATABASE:-neo4j}"

# Builder 路径配置（转为绝对路径）
export BUILDER_CONFIG="${BUILDER_CONFIG:-$PLUGIN_ROOT/scripts/config.json}"
export BUILDER_DIR="${BUILDER_DIR:-$PLUGIN_ROOT/scripts/builder}"

exec "$PYTHON" "$SCRIPT_DIR/$SCRIPT_NAME" "$@"
