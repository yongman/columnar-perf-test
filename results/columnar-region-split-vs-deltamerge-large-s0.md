# Benchmark Comparison: columnar-large-s0-region-split vs deltamerge-large-s0

| Query | Hash Match | LHS Median (s) | RHS Median (s) | RHS / LHS | LHS P95 (s) | RHS P95 (s) |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| 01_scan_agg_distinct | yes | 0.268000 | 0.239000 | 0.8918 | 0.274000 | 0.249000 |
| 02_scan_agg_json | yes | 0.283000 | 0.232000 | 0.8198 | 0.287000 | 0.241000 |
| 03_large_in_group_by | yes | 0.337000 | 0.192000 | 0.5697 | 0.352000 | 0.196000 |
| 04_wide_topn | yes | 0.570000 | 0.348000 | 0.6105 | 0.660000 | 0.358000 |
| 05_row_number_paging | yes | 0.346000 | 0.277000 | 0.8006 | 0.443000 | 0.299000 |
| 06_hot_window_agg | yes | 0.230000 | 0.218000 | 0.9478 | 0.243000 | 0.222000 |
| 07_hot_window_topn | yes | 0.553000 | 0.336000 | 0.6076 | 0.595000 | 0.364000 |
| 08_or_lookup | yes | 2.390000 | 0.226000 | 0.0946 | 2.399000 | 0.247000 |
| 09_pushdown_filter_base | yes | 0.445000 | 0.207000 | 0.4652 | 0.452000 | 0.217000 |
| 10_pushdown_filter_derived | yes | 0.464000 | 0.222000 | 0.4784 | 0.493000 | 0.230000 |
| 11_late_materialization_narrow_topn | yes | 0.387000 | 0.211000 | 0.5452 | 0.393000 | 0.229000 |
| 12_late_materialization_wide_topn | yes | 2.148000 | 0.530000 | 0.2467 | 2.193000 | 0.541000 |

## Notes

- `RHS / LHS > 1` means `columnar-large-s0-region-split` is faster on median latency.
- `RHS / LHS < 1` means `deltamerge-large-s0` is faster on median latency.
- `Hash Match = no` means the result set content differed and the timing comparison should not be trusted before the mismatch is explained.
