SELECT
    merchant_id,
    status_key AS status,
    currency_key AS currency,
    COUNT(*) AS matched_rows,
    SUM(valid_amount) AS total_valid_amount,
    SUM(net_win) AS total_win_lose
FROM (
    SELECT /*+ read_from_storage(tiflash[fact_order_wide]) */
        merchant_id,
        CASE
            WHEN status IN (1, 2) THEN status
            ELSE NULL
        END AS status_key,
        CASE
            WHEN currency IN ('USD', 'EUR') THEN currency
            ELSE NULL
        END AS currency_key,
        CASE
            WHEN ad_id IN (
                10017, 10217, 10417, 10617, 10817, 11017, 11217, 11417,
                10018, 10218, 10418, 10618, 10818, 11018, 11218, 11418,
                10019, 10219, 10419, 10619, 10819, 11019, 11219, 11419,
                10020, 10220, 10420, 10620, 10820, 11020, 11220, 11420
            ) THEN 1
            ELSE 0
        END AS ad_match,
        CASE
            WHEN amount >= 100.00 AND amount < 300.00 THEN 1
            ELSE 0
        END AS amount_match,
        valid_amount,
        amount - payout AS net_win
    FROM bench_columnar_perf.fact_order_wide
    WHERE merchant_id IN (17, 18, 19, 20)
      AND stat_time >= '2026-03-04 00:00:00'
      AND stat_time < '2026-03-07 00:00:00'
      AND deleted = 0
) AS filtered
WHERE status_key IS NOT NULL
  AND currency_key IS NOT NULL
  AND ad_match = 1
  AND amount_match = 1
GROUP BY merchant_id, status_key, currency_key
ORDER BY merchant_id, status_key, currency_key;
