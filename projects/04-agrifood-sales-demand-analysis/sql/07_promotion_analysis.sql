-- Project 04: Promotion analysis
SELECT
    promotion,
    COUNT(*) AS total_orders,
    SUM(units_sold) AS units_sold,
    ROUND(AVG(unit_price_mad), 2) AS avg_unit_price_mad,
    ROUND(SUM(revenue_mad), 2) AS revenue_mad,
    ROUND(SUM(profit_mad), 2) AS profit_mad,
    ROUND(100.0 * SUM(profit_mad) / NULLIF(SUM(revenue_mad), 0), 2) AS profit_margin_pct
FROM sales_data
GROUP BY promotion
ORDER BY revenue_mad DESC;
