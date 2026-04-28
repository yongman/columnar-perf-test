# Benchmark Comparison: columnar-large-s0-20260428 vs deltamerge-large-s0-16core

| Query | Hash Match | LHS Median (s) | RHS Median (s) | RHS / LHS | LHS P95 (s) | RHS P95 (s) |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| 01_scan_agg_distinct | yes | 0.250000 | 0.232000 | 0.9280 | 0.257000 | 0.238000 |
| 02_scan_agg_json | yes | 0.273000 | 0.220000 | 0.8059 | 0.289000 | 0.233000 |
| 03_large_in_group_by | yes | 0.423000 | 0.187000 | 0.4421 | 0.465000 | 0.188000 |
| 04_wide_topn | yes | 0.613000 | 0.330000 | 0.5383 | 0.647000 | 0.343000 |
| 05_row_number_paging | yes | 0.343000 | 0.276000 | 0.8047 | 0.367000 | 0.283000 |
| 06_hot_window_agg | yes | 0.231000 | 0.223000 | 0.9654 | 0.238000 | 0.227000 |
| 07_hot_window_topn | yes | 0.569000 | 0.333000 | 0.5852 | 0.676000 | 0.352000 |
| 08_or_lookup | yes | 0.496000 | 0.226000 | 0.4556 | 0.535000 | 0.231000 |
| 09_pushdown_filter_base | yes | 0.457000 | 0.207000 | 0.4530 | 0.577000 | 0.229000 |
| 10_pushdown_filter_derived | yes | 0.478000 | 0.216000 | 0.4519 | 0.551000 | 0.220000 |
| 11_late_materialization_narrow_topn | yes | 0.597000 | 0.215000 | 0.3601 | 0.629000 | 0.222000 |
| 12_late_materialization_wide_topn | yes | 2.600000 | 0.514000 | 0.1977 | 2.860000 | 0.533000 |

## Notes

- `RHS / LHS > 1` means `columnar-large-s0-20260428` is faster on median latency.
- `RHS / LHS < 1` means `deltamerge-large-s0-16core` is faster on median latency.
- `Hash Match = no` means the result set content differed and the timing comparison should not be trusted before the mismatch is explained.
