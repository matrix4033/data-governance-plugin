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

# Python 解释器（优先级：DG_PYTHON > conda work-env > python3 > python）
if [ -n "$DG_PYTHON" ]; then
    PYTHON="$DG_PYTHON"
else
    # 自动探测 conda work-env
    for base in /opt/anaconda3 /opt/miniconda3 "$HOME/anaconda3" "$HOME/miniconda3"; do
        [ -x "$base/envs/work-env/bin/python" ] && PYTHON="$base/envs/work-env/bin/python" && break
    done
    # conda run 备选
    if [ -z "$PYTHON" ] && command -v conda &>/dev/null; then
        PYTHON="$(conda run -n work-env python -c "import sys; print(sys.executable)" 2>/dev/null || true)"
        [ -n "$PYTHON" ] && [ ! -x "$PYTHON" ] && PYTHON=""
    fi
    # 系统默认
    if [ -z "$PYTHON" ]; then
        PYTHON="$(command -v python3 || command -v python || true)"
    fi
fi

if [ -z "$PYTHON" ]; then
    echo "ERROR: 未找到 Python 解释器。请设置 DG_PYTHON 环境变量" >&2
    exit 1
fi

# Neo4j 连接配置（用户可通过 export 覆盖）
export NEO4J_HOST="${NEO4J_HOST:-127.0.0.1}"
export NEO4J_PORT="${NEO4J_PORT:-7687}"
export NEO4J_USER="${NEO4J_USER:-neo4j}"
export NEO4J_PASSWORD="${NEO4J_PASSWORD:-}"
export NEO4J_DATABASE="${NEO4J_DATABASE:-neo4j}"

# Builder 路径配置（转为绝对路径，需在 cd 之前解析）
_REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"  # repo root, two levels up from scripts/
if [[ "$BUILDER_CONFIG" != /* ]]; then
    export BUILDER_CONFIG="$_REPO_ROOT/$BUILDER_CONFIG"
fi
if [[ "$BUILDER_DIR" != /* ]]; then
    export BUILDER_DIR="$_REPO_ROOT/$BUILDER_DIR"
fi

exec "$PYTHON" "$SCRIPT_DIR/$SCRIPT_NAME" "$@"
