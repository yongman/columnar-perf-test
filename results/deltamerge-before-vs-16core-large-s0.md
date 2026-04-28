# Benchmark Comparison: deltamerge-large-s0 vs deltamerge-large-s0-16core

| Query | Hash Match | LHS Median (s) | RHS Median (s) | RHS / LHS | LHS P95 (s) | RHS P95 (s) |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| 01_scan_agg_distinct | yes | 0.239000 | 0.232000 | 0.9707 | 0.249000 | 0.238000 |
| 02_scan_agg_json | yes | 0.232000 | 0.220000 | 0.9483 | 0.241000 | 0.233000 |
| 03_large_in_group_by | yes | 0.192000 | 0.187000 | 0.9740 | 0.196000 | 0.188000 |
| 04_wide_topn | yes | 0.348000 | 0.330000 | 0.9483 | 0.358000 | 0.343000 |
| 05_row_number_paging | yes | 0.277000 | 0.276000 | 0.9964 | 0.299000 | 0.283000 |
| 06_hot_window_agg | yes | 0.218000 | 0.223000 | 1.0229 | 0.222000 | 0.227000 |
| 07_hot_window_topn | yes | 0.336000 | 0.333000 | 0.9911 | 0.364000 | 0.352000 |
| 08_or_lookup | yes | 0.226000 | 0.226000 | 1.0000 | 0.247000 | 0.231000 |
| 09_pushdown_filter_base | yes | 0.207000 | 0.207000 | 1.0000 | 0.217000 | 0.229000 |
| 10_pushdown_filter_derived | yes | 0.222000 | 0.216000 | 0.9730 | 0.230000 | 0.220000 |
| 11_late_materialization_narrow_topn | yes | 0.211000 | 0.215000 | 1.0190 | 0.229000 | 0.222000 |
| 12_late_materialization_wide_topn | yes | 0.530000 | 0.514000 | 0.9698 | 0.541000 | 0.533000 |

## Notes

- `RHS / LHS > 1` means `deltamerge-large-s0` is faster on median latency.
- `RHS / LHS < 1` means `deltamerge-large-s0-16core` is faster on median latency.
- `Hash Match = no` means the result set content differed and the timing comparison should not be trusted before the mismatch is explained.
