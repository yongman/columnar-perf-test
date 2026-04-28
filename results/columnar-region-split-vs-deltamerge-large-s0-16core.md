# Benchmark Comparison: columnar-large-s0-region-split vs deltamerge-large-s0-16core

| Query | Hash Match | LHS Median (s) | RHS Median (s) | RHS / LHS | LHS P95 (s) | RHS P95 (s) |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| 01_scan_agg_distinct | yes | 0.268000 | 0.232000 | 0.8657 | 0.274000 | 0.238000 |
| 02_scan_agg_json | yes | 0.283000 | 0.220000 | 0.7774 | 0.287000 | 0.233000 |
| 03_large_in_group_by | yes | 0.337000 | 0.187000 | 0.5549 | 0.352000 | 0.188000 |
| 04_wide_topn | yes | 0.570000 | 0.330000 | 0.5789 | 0.660000 | 0.343000 |
| 05_row_number_paging | yes | 0.346000 | 0.276000 | 0.7977 | 0.443000 | 0.283000 |
| 06_hot_window_agg | yes | 0.230000 | 0.223000 | 0.9696 | 0.243000 | 0.227000 |
| 07_hot_window_topn | yes | 0.553000 | 0.333000 | 0.6022 | 0.595000 | 0.352000 |
| 08_or_lookup | yes | 2.390000 | 0.226000 | 0.0946 | 2.399000 | 0.231000 |
| 09_pushdown_filter_base | yes | 0.445000 | 0.207000 | 0.4652 | 0.452000 | 0.229000 |
| 10_pushdown_filter_derived | yes | 0.464000 | 0.216000 | 0.4655 | 0.493000 | 0.220000 |
| 11_late_materialization_narrow_topn | yes | 0.387000 | 0.215000 | 0.5556 | 0.393000 | 0.222000 |
| 12_late_materialization_wide_topn | yes | 2.148000 | 0.514000 | 0.2393 | 2.193000 | 0.533000 |

## Notes

- `RHS / LHS > 1` means `columnar-large-s0-region-split` is faster on median latency.
- `RHS / LHS < 1` means `deltamerge-large-s0-16core` is faster on median latency.
- `Hash Match = no` means the result set content differed and the timing comparison should not be trusted before the mismatch is explained.
