#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SQL_DIR="${ROOT_DIR}/sql"
QUERY_DIR="${ROOT_DIR}/queries"
RESULT_DIR="${ROOT_DIR}/results"
BENCH_DB="${BENCH_DB:-bench_columnar_perf}"
MYSQL_HOST="${MYSQL_HOST:-127.0.0.1}"
MYSQL_PORT="${MYSQL_PORT:-4000}"
MYSQL_USER="${MYSQL_USER:-root}"
MYSQL_DEFAULT_DB="${MYSQL_DEFAULT_DB:-}"
RUN_LABEL="${RUN_LABEL:-}"
WARMUP="${WARMUP:-1}"
REPEAT="${REPEAT:-5}"

mysql_base_args=(
  --host="${MYSQL_HOST}"
  --port="${MYSQL_PORT}"
  --user="${MYSQL_USER}"
)

if [[ -n "${MYSQL_DEFAULT_DB}" ]]; then
  mysql_base_args+=(--database="${MYSQL_DEFAULT_DB}")
fi

mysql_batch_args=(
  "${mysql_base_args[@]}"
  --batch
  --raw
  --skip-column-names
)

mysql_table_args=(
  "${mysql_base_args[@]}"
  --table
)

usage() {
  cat <<'EOF'
Usage:
  run_mysql_benchmark.sh bootstrap-schema
  run_mysql_benchmark.sh bootstrap
  run_mysql_benchmark.sh prepare-s0
  run_mysql_benchmark.sh prepare-s1
  run_mysql_benchmark.sh prepare-s2
  run_mysql_benchmark.sh table-stats
  RUN_LABEL=<label> run_mysql_benchmark.sh run

Environment:
  MYSQL_HOST         MySQL / TiDB host, default 127.0.0.1
  MYSQL_PORT         MySQL / TiDB port, default 4000
  MYSQL_USER         MySQL / TiDB user, default root
  MYSQL_PWD          Optional password, consumed by mysql client
  BENCH_DB           Benchmark database, default bench_columnar_perf
  RUN_LABEL          Result directory label for the run subcommand
  WARMUP             Warm-up iterations per query, default 1
  REPEAT             Measured iterations per query, default 5
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

load_query() {
  local file="$1"
  sed -e '/^[[:space:]]*--/d' -e '/^[[:space:]]*#/d' -e '/^[[:space:]]*$/d' "${file}" | tr '\n' ' '
}

write_wrapped_sql() {
  local query_sql="$1"
  local out_file="$2"
  local mode="${3:-query}"
  {
    echo "USE ${BENCH_DB};"
    echo "SET SESSION tidb_isolation_read_engines='tiflash';"
    echo "SET SESSION tidb_allow_mpp = 1;"
    if [[ "${mode}" == "explain" ]]; then
      echo "EXPLAIN ANALYZE ${query_sql}"
    else
      echo "${query_sql}"
    fi
  } >"${out_file}"
}

run_query_file() {
  local sql_file="$1"
  mysql "${mysql_batch_args[@]}" < "${sql_file}" >/dev/null
}

save_query_result() {
  local sql_file="$1"
  local out_file="$2"
  mysql "${mysql_batch_args[@]}" < "${sql_file}" >"${out_file}"
}

save_explain_analyze() {
  local explain_sql_file="$1"
  local out_file="$2"
  mysql "${mysql_table_args[@]}" < "${explain_sql_file}" >"${out_file}"
}

benchmark_run() {
  if [[ -z "${RUN_LABEL}" ]]; then
    echo "RUN_LABEL is required for the run subcommand" >&2
    exit 1
  fi

  local run_dir="${RESULT_DIR}/${RUN_LABEL}"
  local explain_dir="${run_dir}/explain"
  local result_copy_dir="${run_dir}/result_sets"
  mkdir -p "${explain_dir}" "${result_copy_dir}"

  local timings_file="${run_dir}/timings.tsv"
  local hash_file="${run_dir}/hashes.tsv"
  local meta_file="${run_dir}/meta.txt"

  printf "label\tquery\titeration\telapsed_seconds\n" >"${timings_file}"
  printf "label\tquery\tresult_rows\tsha256\n" >"${hash_file}"
  {
    echo "label=${RUN_LABEL}"
    echo "mysql_host=${MYSQL_HOST}"
    echo "mysql_port=${MYSQL_PORT}"
    echo "mysql_user=${MYSQL_USER}"
    echo "bench_db=${BENCH_DB}"
    echo "warmup=${WARMUP}"
    echo "repeat=${REPEAT}"
    date -u +"started_at=%Y-%m-%dT%H:%M:%SZ"
  } >"${meta_file}"

  local query_file
  for query_file in "${QUERY_DIR}"/*.sql; do
    local query_name
    query_name="$(basename "${query_file}" .sql)"
    local query_sql
    query_sql="$(load_query "${query_file}")"
    local result_file="${result_copy_dir}/${query_name}.tsv"
    local explain_file="${explain_dir}/${query_name}.txt"
    local time_file="${run_dir}/.${query_name}.time"
    local sql_file="${run_dir}/.${query_name}.sql"
    local explain_sql_file="${run_dir}/.${query_name}.explain.sql"

    echo "==> query ${query_name}"

    write_wrapped_sql "${query_sql}" "${sql_file}" "query"
    write_wrapped_sql "${query_sql}" "${explain_sql_file}" "explain"

    save_query_result "${sql_file}" "${result_file}"
    local result_rows
    result_rows="$(wc -l < "${result_file}" | tr -d ' ')"
    local result_sha
    result_sha="$(sha256sum "${result_file}" | awk '{print $1}')"
    printf "%s\t%s\t%s\t%s\n" "${RUN_LABEL}" "${query_name}" "${result_rows}" "${result_sha}" >>"${hash_file}"

    save_explain_analyze "${explain_sql_file}" "${explain_file}"

    local i
    for ((i = 1; i <= WARMUP; i++)); do
      echo "  warmup ${i}/${WARMUP}"
      run_query_file "${sql_file}"
    done

    for ((i = 1; i <= REPEAT; i++)); do
      echo "  measure ${i}/${REPEAT}"
      /usr/bin/time -o "${time_file}" -f '%e' mysql "${mysql_batch_args[@]}" < "${sql_file}" >/dev/null
      printf "%s\t%s\t%d\t%s\n" "${RUN_LABEL}" "${query_name}" "${i}" "$(cat "${time_file}")" >>"${timings_file}"
    done

    rm -f "${time_file}" "${sql_file}" "${explain_sql_file}"
  done

  date -u +"finished_at=%Y-%m-%dT%H:%M:%SZ" >>"${meta_file}"
  echo "==> benchmark results written to ${run_dir}"
}

main() {
  require_cmd mysql
  require_cmd sha256sum
  require_cmd /usr/bin/time

  local cmd="${1:-}"
  case "${cmd}" in
    bootstrap-schema)
      run_sql_file "${SQL_DIR}/00_create_database.sql"
      run_sql_file "${SQL_DIR}/01_create_tables.sql"
      run_sql_file "${SQL_DIR}/02_build_helper_sequences.sql"
      run_sql_file "${SQL_DIR}/10_create_chunk_load_procedures.sql"
      ;;
    bootstrap)
      run_sql_file "${SQL_DIR}/00_create_database.sql"
      run_sql_file "${SQL_DIR}/01_create_tables.sql"
      run_sql_file "${SQL_DIR}/02_build_helper_sequences.sql"
      run_sql_file "${SQL_DIR}/10_create_chunk_load_procedures.sql"
      run_sql_file "${SQL_DIR}/03_load_fact_order_wide_base.sql"
      run_sql_file "${SQL_DIR}/04_load_user_game_day_base.sql"
      ;;
    prepare-s0)
      run_sql_file "${SQL_DIR}/05_prepare_s0_stable.sql"
      ;;
    prepare-s1)
      run_sql_file "${SQL_DIR}/06_prepare_s1_append.sql"
      ;;
    prepare-s2)
      run_sql_file "${SQL_DIR}/07_prepare_s2_mixed_delta.sql"
      ;;
    table-stats)
      run_sql_file "${SQL_DIR}/08_collect_mysql_table_stats.sql"
      ;;
    run)
      benchmark_run
      ;;
    ""|-h|--help|help)
      usage
      ;;
    *)
      echo "unknown subcommand: ${cmd}" >&2
      usage
      exit 1
      ;;
  esac
}

main "$@"
