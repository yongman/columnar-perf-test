# Benchmark Comparison: columnar-large-s0 vs deltamerge-large-s0

| Query | Hash Match | LHS Median (s) | RHS Median (s) | RHS / LHS | LHS P95 (s) | RHS P95 (s) |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| 01_scan_agg_distinct | yes | 0.946000 | 0.239000 | 0.2526 | 0.960000 | 0.249000 |
| 02_scan_agg_json | yes | 0.933000 | 0.232000 | 0.2487 | 0.941000 | 0.241000 |
| 03_large_in_group_by | yes | 1.317000 | 0.192000 | 0.1458 | 1.328000 | 0.196000 |
| 04_wide_topn | yes | 2.907000 | 0.348000 | 0.1197 | 3.134000 | 0.358000 |
| 05_row_number_paging | yes | 1.351000 | 0.277000 | 0.2050 | 1.395000 | 0.299000 |
| 06_hot_window_agg | yes | 0.859000 | 0.218000 | 0.2538 | 0.883000 | 0.222000 |
| 07_hot_window_topn | yes | 2.691000 | 0.336000 | 0.1249 | 2.999000 | 0.364000 |
| 08_or_lookup | yes | 2.419000 | 0.226000 | 0.0934 | 2.459000 | 0.247000 |
| 09_pushdown_filter_base | yes | 3.009000 | 0.207000 | 0.0688 | 3.117000 | 0.217000 |
| 10_pushdown_filter_derived | yes | 3.107000 | 0.222000 | 0.0715 | 3.423000 | 0.230000 |
| 11_late_materialization_narrow_topn | yes | 2.332000 | 0.211000 | 0.0905 | 2.399000 | 0.229000 |
| 12_late_materialization_wide_topn | yes | 15.853000 | 0.530000 | 0.0334 | 16.091000 | 0.541000 |

## Notes

- `RHS / LHS > 1` means `columnar-large-s0` is faster on median latency.
- `RHS / LHS < 1` means `deltamerge-large-s0` is faster on median latency.
- `Hash Match = no` means the result set content differed and the timing comparison should not be trusted before the mismatch is explained.
