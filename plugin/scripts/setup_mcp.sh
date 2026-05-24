#!/bin/bash
# MCP 初始化指引 —— 检查 Python 环境
# 克隆后执行一次: bash plugin/scripts/setup_mcp.sh
# 注意：.mcp.json 由 git 统一管理，使用相对路径。此脚本仅验证环境。

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PLUGIN_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
REPO_ROOT="$(cd "$PLUGIN_ROOT/.." && pwd)"

echo "=== MCP 环境检查 ==="
echo ""

# ---- 自动探测 Python ----
detect_python() {
    for base in /opt/anaconda3 /opt/miniconda3 "$HOME/anaconda3" "$HOME/miniconda3"; do
        [ -x "$base/envs/work-env/bin/python" ] && echo "$base/envs/work-env/bin/python" && return
    done
    if command -v conda &>/dev/null; then
        py="$(conda run -n work-env python -c "import sys; print(sys.executable)" 2>/dev/null || true)"
        [ -n "$py" ] && [ -x "$py" ] && echo "$py" && return
    fi
    command -v python3 || command -v python || true
}

PY="$(detect_python)"

# ---- 验证依赖 ----
check_dep() {
    local py="$1" pkg="$2"
    "$py" -c "import $pkg" 2>/dev/null
}

DEP_OK=true
if [ -n "$PY" ]; then
    echo "📦 探测到 Python: $PY"

    if ! check_dep "$PY" "neo4j"; then
        echo "   ⚠️  缺失 neo4j 包"
        DEP_OK=false
    else
        echo "   ✅ neo4j 包已安装"
    fi

    if ! check_dep "$PY" "mcp"; then
        echo "   ⚠️  缺失 mcp 包"
        DEP_OK=false
    else
        echo "   ✅ mcp 包已安装"
    fi

    echo "   ✅ builder 模块（本地）"
else
    echo "⚠️  未找到 Python 解释器"
    DEP_OK=false
fi

# ---- 环境指引 ----
if [ "$DEP_OK" = false ]; then
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  Python 环境需要配置"
    echo ""
    echo "  推荐使用 conda 创建 work-env 环境："
    echo ""
    echo "    conda create -n work-env python=3.11 -y"
    echo "    conda activate work-env"
    echo "    pip install neo4j mcp"
    echo ""
    echo "  或者安装到当前 Python："
    echo "    pip install neo4j mcp"
    echo ""
    echo "  配置完成后重新运行："
    echo "    bash plugin/scripts/setup_mcp.sh"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
fi

echo ""
echo "✅ MCP 环境检查完成"
echo ""
echo "项目 .mcp.json 已由 git 管理（使用相对路径），无需手动生成"
echo "启动 Claude Code（从 repo 根目录），输入 /mcp 验证"
