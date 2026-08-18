-- Sales-channel performance
SELECT
    sales_channel,
    COUNT(*) AS total_orders,
    SUM(units_sold) AS units_sold,
    ROUND(SUM(revenue_mad), 2) AS revenue_mad,
    ROUND(SUM(profit_mad), 2) AS profit_mad,
    ROUND(100.0 * SUM(profit_mad) / NULLIF(SUM(revenue_mad), 0), 2) AS profit_margin_pct
FROM sales_data
WHERE TRIM(COALESCE(order_id, '')) <> ''
GROUP BY sales_channel
ORDER BY revenue_mad DESC;
