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
LOAD_MODE="${LOAD_MODE:-auto}"

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
  LOAD_MODE=auto|procedure|direct
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
  sed "s/bench_columnar_perf/${BENCH_DB}/g" "${file}" | mysql "${mysql_base_args[@]}"
}

execute_sql_file() {
  local file="$1"
  mysql "${mysql_base_args[@]}" < "${file}"
}

detect_load_mode() {
  case "${LOAD_MODE}" in
    direct|procedure)
      echo "${LOAD_MODE}"
      return
      ;;
    auto)
      ;;
    *)
      echo "unknown LOAD_MODE: ${LOAD_MODE}" >&2
      exit 1
      ;;
  esac

  local probe_file
  probe_file="$(mktemp)"
  cat >"${probe_file}" <<EOF
CREATE DATABASE IF NOT EXISTS ${BENCH_DB};
USE ${BENCH_DB};
DROP PROCEDURE IF EXISTS __bench_proc_probe;
DELIMITER //
CREATE PROCEDURE __bench_proc_probe()
BEGIN
  SELECT 1;
END //
DELIMITER ;
DROP PROCEDURE IF EXISTS __bench_proc_probe;
EOF

  if mysql "${mysql_base_args[@]}" < "${probe_file}" >/dev/null 2>&1; then
    rm -f "${probe_file}"
    echo "procedure"
  else
    rm -f "${probe_file}"
    echo "direct"
  fi
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

generate_fact_chunk_insert_file() {
  local file="$1"
  local base_offset="$2"
  local day_offset="$3"
  local chunk_rows="$4"

  cat >"${file}" <<EOF
USE ${BENCH_DB};
INSERT IGNORE INTO fact_order_wide
SELECT
    1 + ((${base_offset} + seq) % 200) AS merchant_id,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:00:00'), INTERVAL ${day_offset} DAY), INTERVAL ((${base_offset} + seq) % 86400) SECOND) AS stat_time,
    ${base_offset} + seq AS order_id,
    1000000 + ((${base_offset} + seq) % 500000000) AS user_id,
    200000000 + ${base_offset} + seq AS round_id,
    10001 + ((${base_offset} + seq) % 5000) AS ad_id,
    1 + ((${base_offset} + seq) % 200) AS game_id,
    1 + ((${base_offset} + seq) % 20) AS platform_id,
    ELT(1 + ((${base_offset} + seq) % 3), 'USD', 'CNY', 'EUR') AS currency,
    1 + ((${base_offset} + seq) % 3) AS status,
    0 AS deleted,
    CAST(((${base_offset} + seq) % 100000) / 100.0 AS DECIMAL(18, 2)) AS amount,
    CAST(((${base_offset} + seq) % 80000) / 100.0 AS DECIMAL(18, 2)) AS valid_amount,
    CAST(((${base_offset} + seq) % 70000) / 100.0 AS DECIMAL(18, 2)) AS payout,
    CAST(((${base_offset} + seq) % 20000) / 100.0 AS DECIMAL(18, 2)) AS revenue,
    CAST(((${base_offset} + seq) % 5000) / 100.0 AS DECIMAL(18, 2)) AS jackpot_prize,
    JSON_OBJECT('first', CAST(((${base_offset} + seq) % 1000) / 100.0 AS DECIMAL(10, 2))) AS insurance_turn,
    JSON_OBJECT('second', CAST(((${base_offset} + seq) % 800) / 100.0 AS DECIMAL(10, 2))) AS insurance_river,
    ELT(1 + ((${base_offset} + seq) % 5), 'US', 'CN', 'SG', 'DE', 'JP') AS country,
    ELT(1 + ((${base_offset} + seq) % 4), 'app', 'web', 'agent', 'api') AS channel,
    CONCAT('m-', LPAD((${base_offset} + seq) % 100, 2, '0')) AS device_model,
    CONCAT('user-', LPAD((${base_offset} + seq) % 500000000, 9, '0')) AS login_name,
    RPAD(CONCAT('p1-', (${base_offset} + seq) % 1000), 64, 'x') AS payload_1,
    RPAD(CONCAT('p2-', (${base_offset} + seq) % 2000), 64, 'y') AS payload_2,
    RPAD(CONCAT('p3-', (${base_offset} + seq) % 3000), 64, 'z') AS payload_3,
    RPAD(CONCAT('p4-', (${base_offset} + seq) % 4000), 64, 'k') AS payload_4,
    RPAD(CONCAT('p5-', (${base_offset} + seq) % 5000), 64, 'm') AS payload_5,
    DATE_ADD(DATE_ADD(TIMESTAMP('2026-03-01 00:01:00'), INTERVAL ${day_offset} DAY), INTERVAL ((${base_offset} + seq) % 86400) SECOND) AS updated_at
FROM bench_seq_1m
WHERE seq < ${chunk_rows};
EOF
}

generate_user_chunk_insert_file() {
  local file="$1"
  local base_offset="$2"
  local day_offset="$3"
  local chunk_rows="$4"

  cat >"${file}" <<EOF
USE ${BENCH_DB};
INSERT IGNORE INTO user_game_day
SELECT
    DATE('2026-03-01') + INTERVAL ${day_offset} DAY AS stat_day,
    1000000 + ${base_offset} + seq AS user_id,
    1 + ((${base_offset} + seq) % 100) AS game_id,
    1 + ((${base_offset} + seq) % 200) AS merchant_id,
    CAST(((${base_offset} + seq) % 50000) / 100.0 AS DECIMAL(18, 2)) AS bet_amount,
    CAST(((${base_offset} + seq) % 30000) / 100.0 AS DECIMAL(18, 2)) AS payout_amount
FROM bench_seq_1m
WHERE seq < ${chunk_rows};
EOF
}

load_table_by_days() {
  local table_name="$1"
  local proc_name="$2"
  local total_rows="$3"
  local day_count="$4"
  local chunk_rows="$5"
  local actual_load_mode="$6"

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
    if [[ "${actual_load_mode}" == "procedure" ]]; then
      generate_day_call_file "${sql_file}" "${proc_name}" "${base_offset}" "${day}" "${rows_per_day}" "${chunk_rows}"
    else
      : >"${sql_file}"
      echo "USE ${BENCH_DB};" >>"${sql_file}"
      local remaining="${rows_per_day}"
      local chunk_base_offset="${base_offset}"
      while (( remaining > 0 )); do
        local chunk="${chunk_rows}"
        if (( remaining < chunk_rows )); then
          chunk="${remaining}"
        fi
        local chunk_file="${TMP_DIR}/${table_name}/.${table_name}_day_${day}_offset_${chunk_base_offset}.sql"
        if [[ "${table_name}" == "fact_order_wide" ]]; then
          generate_fact_chunk_insert_file "${chunk_file}" "${chunk_base_offset}" "${day}" "${chunk}"
        else
          generate_user_chunk_insert_file "${chunk_file}" "${chunk_base_offset}" "${day}" "${chunk}"
        fi
        cat "${chunk_file}" >>"${sql_file}"
        echo >>"${sql_file}"
        rm -f "${chunk_file}"
        chunk_base_offset=$(( chunk_base_offset + chunk ))
        remaining=$(( remaining - chunk ))
      done
    fi
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

  local actual_load_mode
  actual_load_mode="$(detect_load_mode)"
  echo "==> load mode: ${actual_load_mode}"

  run_sql_file "${SQL_DIR}/00_create_database.sql"
  run_sql_file "${SQL_DIR}/01_create_tables.sql"
  run_sql_file "${SQL_DIR}/02_build_helper_sequences.sql"
  if [[ "${actual_load_mode}" == "procedure" ]]; then
    run_sql_file "${SQL_DIR}/10_create_chunk_load_procedures.sql"
  fi

  if [[ "${LOAD_FACT}" == "1" ]]; then
    load_table_by_days "fact_order_wide" "load_fact_order_wide_chunk" "${FACT_TARGET_ROWS}" "${FACT_DAY_COUNT}" "${FACT_CHUNK_ROWS}" "${actual_load_mode}"
  fi

  if [[ "${LOAD_USER}" == "1" ]]; then
    load_table_by_days "user_game_day" "load_user_game_day_chunk" "${USER_TARGET_ROWS}" "${USER_DAY_COUNT}" "${USER_CHUNK_ROWS}" "${actual_load_mode}"
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
