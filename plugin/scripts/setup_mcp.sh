#!/bin/bash
# MCP 初始化 —— 生成 .mcp.json（绝对路径 + conda 自动探测）
# 克隆后执行一次: bash plugin/scripts/setup_mcp.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PLUGIN_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
REPO_ROOT="$(cd "$PLUGIN_ROOT/.." && pwd)"

# 自动探测 conda work-env Python
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

if [ -n "$PY" ]; then
    cat > "$REPO_ROOT/.mcp.json" <<EOF
{
  "mcpServers": {
    "dg-neo4j": {
      "command": "bash",
      "args": ["$PLUGIN_ROOT/scripts/mcp_wrapper.sh", "mcp_neo4j.py"],
      "env": { "DG_PYTHON": "$PY" },
      "alwaysLoad": true
    },
    "dg-builder": {
      "command": "bash",
      "args": ["$PLUGIN_ROOT/scripts/mcp_wrapper.sh", "mcp_builder.py"],
      "env": { "DG_PYTHON": "$PY" },
      "alwaysLoad": true
    }
  }
}
EOF
else
    cat > "$REPO_ROOT/.mcp.json" <<EOF
{
  "mcpServers": {
    "dg-neo4j": {
      "command": "bash",
      "args": ["$PLUGIN_ROOT/scripts/mcp_wrapper.sh", "mcp_neo4j.py"],
      "alwaysLoad": true
    },
    "dg-builder": {
      "command": "bash",
      "args": ["$PLUGIN_ROOT/scripts/mcp_wrapper.sh", "mcp_builder.py"],
      "alwaysLoad": true
    }
  }
}
EOF
fi

echo "✅ .mcp.json 已生成: $REPO_ROOT/.mcp.json"
echo "   Python: ${PY:-系统默认}"
echo "   启动 Claude Code（从 repo 根目录），输入 /mcp 验证"
