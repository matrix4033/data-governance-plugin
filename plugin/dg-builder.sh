#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export BUILDER_CONFIG="$DIR/scripts/config.json"
export BUILDER_DIR="$DIR/scripts/builder"
exec /opt/anaconda3/envs/work-env/bin/python "$DIR/scripts/mcp_builder.py"
