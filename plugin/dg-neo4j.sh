#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export NEO4J_HOST="${NEO4J_HOST:-127.0.0.1}"
export NEO4J_PORT="${NEO4J_PORT:-7687}"
export NEO4J_USER="${NEO4J_USER:-neo4j}"
export NEO4J_DATABASE="${NEO4J_DATABASE:-neo4j}"
exec /opt/anaconda3/envs/work-env/bin/python "$DIR/scripts/mcp_neo4j.py"
