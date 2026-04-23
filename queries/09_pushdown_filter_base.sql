SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
    merchant_id,
    status,
    currency,
    COUNT(*) AS matched_rows,
    SUM(valid_amount) AS total_valid_amount,
    SUM(amount - payout) AS total_win_lose
FROM bench_columnar_perf.fact_order_wide
WHERE merchant_id IN (17, 18, 19, 20)
  AND stat_time >= '2026-03-04 00:00:00'
  AND stat_time < '2026-03-07 00:00:00'
  AND deleted = 0
  AND status IN (1, 2)
  AND currency IN ('USD', 'EUR')
  AND ad_id IN (
      10017, 10217, 10417, 10617, 10817, 11017, 11217, 11417,
      10018, 10218, 10418, 10618, 10818, 11018, 11218, 11418,
      10019, 10219, 10419, 10619, 10819, 11019, 11219, 11419,
      10020, 10220, 10420, 10620, 10820, 11020, 11220, 11420
  )
  AND amount >= 100.00
  AND amount < 300.00
GROUP BY merchant_id, status, currency
ORDER BY merchant_id, status, currency;
