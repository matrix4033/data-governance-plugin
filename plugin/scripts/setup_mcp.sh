#!/bin/bash
# MCP 服务器初始化脚本 —— 写入项目级 Claude Code 设置
# 在克隆仓库后运行一次：bash plugin/scripts/setup_mcp.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PLUGIN_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
REPO_ROOT="$(cd "$PLUGIN_ROOT/.." && pwd)"

# 确定目标 settings 文件（项目级，.gitignore 默认排除）
SETTINGS_DIR="$REPO_ROOT/.claude"
SETTINGS_FILE="$SETTINGS_DIR/settings.local.json"

mkdir -p "$SETTINGS_DIR"

# 自动探测 conda work-env 的 Python（写入 DG_PYTHON env）
DG_PYTHON=""
for base in /opt/anaconda3 /opt/miniconda3 "$HOME/anaconda3" "$HOME/miniconda3"; do
    [ -x "$base/envs/work-env/bin/python" ] && DG_PYTHON="$base/envs/work-env/bin/python" && break
done
if [ -z "$DG_PYTHON" ] && command -v conda &>/dev/null; then
    DG_PYTHON="$(conda run -n work-env python -c "import sys; print(sys.executable)" 2>/dev/null || true)"
    [ -n "$DG_PYTHON" ] && [ ! -x "$DG_PYTHON" ] && DG_PYTHON=""
fi

# 构建 env 段（仅在找到 conda python 时添加）
ENV_BLOCK=""
if [ -n "$DG_PYTHON" ]; then
    ENV_BLOCK=$(cat <<ENVJSON
  "env": {
    "DG_PYTHON": "$DG_PYTHON"
  },
ENVJSON
)
fi

# 构建 MCP 配置（使用绝对路径）
MCP_CONFIG=$(cat <<JSON
{
  "mcpServers": {
    "dg-neo4j": {
      "command": "bash",
      "args": ["$PLUGIN_ROOT/scripts/mcp_wrapper.sh", "mcp_neo4j.py"],
      $ENV_BLOCK
      "alwaysLoad": true
    },
    "dg-builder": {
      "command": "bash",
      "args": ["$PLUGIN_ROOT/scripts/mcp_wrapper.sh", "mcp_builder.py"],
      $ENV_BLOCK
      "alwaysLoad": true
    }
  }
}
JSON
)

# 如果文件已存在，合并 mcpServers（不覆盖其他设置）
if [ -f "$SETTINGS_FILE" ]; then
    # 检查是否已有冲突的 dg-neo4j / dg-builder 定义
    EXISTING=$(python3 -c "
import json
try:
    with open('$SETTINGS_FILE') as f:
        data = json.load(f)
    servers = data.get('mcpServers', {})
    for name in ['dg-neo4j', 'dg-builder']:
        if name in servers:
            print(name)
except Exception:
    pass
" 2>/dev/null)

    if [ -n "$EXISTING" ]; then
        echo "⚠️  检测到已存在的 MCP 定义: $EXISTING"
        echo "   跳过写入。如需覆盖，请手动编辑 $SETTINGS_FILE"
        exit 0
    fi

    # 合并
    python3 -c "
import json
with open('$SETTINGS_FILE') as f:
    data = json.load(f)
new = json.loads('''$MCP_CONFIG''')
data.setdefault('mcpServers', {}).update(new['mcpServers'])
with open('$SETTINGS_FILE', 'w') as f:
    json.dump(data, f, indent=2)
    f.write('\n')
"
else
    echo "$MCP_CONFIG" > "$SETTINGS_FILE"
fi

echo "✅ MCP 服务器配置已写入: $SETTINGS_FILE"
echo "   启动 Claude Code 后输入 /mcp 验证"
