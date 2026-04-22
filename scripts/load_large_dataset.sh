#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SQL_DIR="${ROOT_DIR}/sql"
TMP_DIR="${ROOT_DIR}/results/.load-tmp"

MYSQL_HOST="${MYSQL_HOST:-127.0.0.1}"
MYSQL_PORT="${MYSQL_PORT:-4000}"
MYSQL_USER="${MYSQL_USER:-root}"
MYSQL_DEFAULT_DB="${MYSQL_DEFAULT_DB:-}"
BENCH_DB="${BENCH_DB:-bench_columnar_perf}"

FACT_TARGET_ROWS="${FACT_TARGET_ROWS:-1000000000}"
FACT_DAY_COUNT="${FACT_DAY_COUNT:-10}"
FACT_CHUNK_ROWS="${FACT_CHUNK_ROWS:-1000000}"

USER_TARGET_ROWS="${USER_TARGET_ROWS:-1000000000}"
USER_DAY_COUNT="${USER_DAY_COUNT:-10}"
USER_CHUNK_ROWS="${USER_CHUNK_ROWS:-1000000}"

LOAD_FACT="${LOAD_FACT:-1}"
LOAD_USER="${LOAD_USER:-1}"
RUN_ANALYZE_AFTER_LOAD="${RUN_ANALYZE_AFTER_LOAD:-1}"
SEED_LOOKUP_ROWS="${SEED_LOOKUP_ROWS:-1}"

mysql_base_args=(
  --host="${MYSQL_HOST}"
  --port="${MYSQL_PORT}"
  --user="${MYSQL_USER}"
)

if [[ -n "${MYSQL_DEFAULT_DB}" ]]; then
  mysql_base_args+=(--database="${MYSQL_DEFAULT_DB}")
fi

usage() {
  cat <<'EOF'
Usage:
  load_large_dataset.sh

Purpose:
  Load billion-scale benchmark data by repeatedly calling chunk-load stored
  procedures. This avoids a single giant INSERT transaction.

Required preparation:
  1. ./scripts/run_mysql_benchmark.sh bootstrap-schema

Defaults:
  FACT_TARGET_ROWS=1000000000
  FACT_DAY_COUNT=10
  FACT_CHUNK_ROWS=1000000
  USER_TARGET_ROWS=1000000000
  USER_DAY_COUNT=10
  USER_CHUNK_ROWS=1000000

Environment:
  MYSQL_HOST, MYSQL_PORT, MYSQL_USER, MYSQL_PWD
  BENCH_DB
  FACT_TARGET_ROWS
  FACT_DAY_COUNT
  FACT_CHUNK_ROWS
  USER_TARGET_ROWS
  USER_DAY_COUNT
  USER_CHUNK_ROWS
  LOAD_FACT=1|0
  LOAD_USER=1|0
  RUN_ANALYZE_AFTER_LOAD=1|0
  SEED_LOOKUP_ROWS=1|0
EOF
}

require_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "missing required command: $1" >&2
    exit 1
  fi
}

run_sql_file() {
  local file="$1"
  echo "==> running ${file}"
  mysql "${mysql_base_args[@]}" < "${file}"
}

execute_sql_file() {
  local file="$1"
  mysql "${mysql_base_args[@]}" < "${file}"
}

calc_rows_per_day() {
  local total_rows="$1"
  local day_count="$2"
  if (( total_rows % day_count != 0 )); then
    echo "target rows ${total_rows} must be divisible by day count ${day_count}" >&2
    exit 1
  fi
  echo $(( total_rows / day_count ))
}

generate_day_call_file() {
  local file="$1"
  local proc_name="$2"
  local base_offset_start="$3"
  local day_offset="$4"
  local rows_per_day="$5"
  local chunk_rows="$6"

  local remaining="${rows_per_day}"
  local base_offset="${base_offset_start}"

  {
    echo "USE ${BENCH_DB};"
    while (( remaining > 0 )); do
      local chunk="${chunk_rows}"
      if (( remaining < chunk_rows )); then
        chunk="${remaining}"
      fi
      echo "CALL ${proc_name}(${base_offset}, ${day_offset}, ${chunk});"
      base_offset=$(( base_offset + chunk ))
      remaining=$(( remaining - chunk ))
    done
  } >"${file}"
}

load_table_by_days() {
  local table_name="$1"
  local proc_name="$2"
  local total_rows="$3"
  local day_count="$4"
  local chunk_rows="$5"

  local rows_per_day
  rows_per_day="$(calc_rows_per_day "${total_rows}" "${day_count}")"
  local chunk_count_per_day=$(( (rows_per_day + chunk_rows - 1) / chunk_rows ))

  echo "==> loading ${table_name}"
  echo "    total_rows=${total_rows}"
  echo "    day_count=${day_count}"
  echo "    rows_per_day=${rows_per_day}"
  echo "    chunk_rows=${chunk_rows}"
  echo "    chunk_count_per_day=${chunk_count_per_day}"

  mkdir -p "${TMP_DIR}/${table_name}"

  local day
  local base_offset=0
  for ((day = 0; day < day_count; day++)); do
    local sql_file="${TMP_DIR}/${table_name}/day_${day}.sql"
    echo "  -> day ${day}/${day_count}"
    generate_day_call_file "${sql_file}" "${proc_name}" "${base_offset}" "${day}" "${rows_per_day}" "${chunk_rows}"
    execute_sql_file "${sql_file}"
    base_offset=$(( base_offset + rows_per_day ))
  done
}

main() {
  require_cmd mysql

  local cmd="${1:-run}"
  case "${cmd}" in
    ""|run)
      ;;
    -h|--help|help)
      usage
      exit 0
      ;;
    *)
      echo "unknown subcommand: ${cmd}" >&2
      usage
      exit 1
      ;;
  esac

  mkdir -p "${TMP_DIR}"

  run_sql_file "${SQL_DIR}/00_create_database.sql"
  run_sql_file "${SQL_DIR}/01_create_tables.sql"
  run_sql_file "${SQL_DIR}/02_build_helper_sequences.sql"
  run_sql_file "${SQL_DIR}/10_create_chunk_load_procedures.sql"

  if [[ "${LOAD_FACT}" == "1" ]]; then
    load_table_by_days "fact_order_wide" "load_fact_order_wide_chunk" "${FACT_TARGET_ROWS}" "${FACT_DAY_COUNT}" "${FACT_CHUNK_ROWS}"
  fi

  if [[ "${LOAD_USER}" == "1" ]]; then
    load_table_by_days "user_game_day" "load_user_game_day_chunk" "${USER_TARGET_ROWS}" "${USER_DAY_COUNT}" "${USER_CHUNK_ROWS}"
  fi

  if [[ "${SEED_LOOKUP_ROWS}" == "1" ]]; then
    run_sql_file "${SQL_DIR}/11_seed_or_lookup_rows.sql"
  fi

  if [[ "${RUN_ANALYZE_AFTER_LOAD}" == "1" ]]; then
    mysql "${mysql_base_args[@]}" <<EOF
USE ${BENCH_DB};
ANALYZE TABLE fact_order_wide, user_game_day;
EOF
  fi

  echo "==> large dataset load completed"
}

main "$@"
