#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SQL_FILE="${ROOT_DIR}/sql/09_collect_tiflash_dt_tables.sql"
RESULT_DIR="${ROOT_DIR}/results"
RUN_LABEL="${RUN_LABEL:-}"
TIFLASH_HOST="${TIFLASH_HOST:-127.0.0.1}"
TIFLASH_PORT="${TIFLASH_PORT:-9000}"
TIFLASH_USER="${TIFLASH_USER:-default}"
TIFLASH_PASSWORD="${TIFLASH_PASSWORD:-}"

usage() {
  cat <<'EOF'
Usage:
  RUN_LABEL=<label> collect_tiflash_dt_stats.sh

Environment:
  RUN_LABEL          Result directory label, required
  TIFLASH_HOST       TiFlash SQL host, default 127.0.0.1
  TIFLASH_PORT       TiFlash SQL port, default 9000
  TIFLASH_USER       TiFlash SQL user, default default
  TIFLASH_PASSWORD   Optional password
EOF
}

if [[ -z "${RUN_LABEL}" ]]; then
  usage >&2
  exit 1
fi

if ! command -v clickhouse-client >/dev/null 2>&1; then
  echo "missing required command: clickhouse-client" >&2
  exit 1
fi

run_dir="${RESULT_DIR}/${RUN_LABEL}"
mkdir -p "${run_dir}"
out_file="${run_dir}/dt_tables.tsv"

query="$(cat "${SQL_FILE}")"

clickhouse_args=(
  --host="${TIFLASH_HOST}"
  --port="${TIFLASH_PORT}"
  --user="${TIFLASH_USER}"
  --format=TSVWithNames
  --query="${query}"
)

if [[ -n "${TIFLASH_PASSWORD}" ]]; then
  clickhouse_args+=(--password="${TIFLASH_PASSWORD}")
fi

clickhouse-client "${clickhouse_args[@]}" >"${out_file}"

echo "==> wrote ${out_file}"
