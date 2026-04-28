# Benchmark Comparison: columnar-large-s0 vs columnar-large-s0-region-split

| Query | Hash Match | LHS Median (s) | RHS Median (s) | RHS / LHS | LHS P95 (s) | RHS P95 (s) |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| 01_scan_agg_distinct | yes | 0.946000 | 0.268000 | 0.2833 | 0.960000 | 0.274000 |
| 02_scan_agg_json | yes | 0.933000 | 0.283000 | 0.3033 | 0.941000 | 0.287000 |
| 03_large_in_group_by | yes | 1.317000 | 0.337000 | 0.2559 | 1.328000 | 0.352000 |
| 04_wide_topn | yes | 2.907000 | 0.570000 | 0.1961 | 3.134000 | 0.660000 |
| 05_row_number_paging | yes | 1.351000 | 0.346000 | 0.2561 | 1.395000 | 0.443000 |
| 06_hot_window_agg | yes | 0.859000 | 0.230000 | 0.2678 | 0.883000 | 0.243000 |
| 07_hot_window_topn | yes | 2.691000 | 0.553000 | 0.2055 | 2.999000 | 0.595000 |
| 08_or_lookup | yes | 2.419000 | 2.390000 | 0.9880 | 2.459000 | 2.399000 |
| 09_pushdown_filter_base | yes | 3.009000 | 0.445000 | 0.1479 | 3.117000 | 0.452000 |
| 10_pushdown_filter_derived | yes | 3.107000 | 0.464000 | 0.1493 | 3.423000 | 0.493000 |
| 11_late_materialization_narrow_topn | yes | 2.332000 | 0.387000 | 0.1660 | 2.399000 | 0.393000 |
| 12_late_materialization_wide_topn | yes | 15.853000 | 2.148000 | 0.1355 | 16.091000 | 2.193000 |

## Notes

- `RHS / LHS > 1` means `columnar-large-s0` is faster on median latency.
- `RHS / LHS < 1` means `columnar-large-s0-region-split` is faster on median latency.
- `Hash Match = no` means the result set content differed and the timing comparison should not be trusted before the mismatch is explained.
