-- Project 04: Category analysis
SELECT
    category,
    SUM(units_sold) AS units_sold,
    ROUND(SUM(revenue_mad), 2) AS revenue_mad,
    ROUND(SUM(cost_mad), 2) AS cost_mad,
    ROUND(SUM(profit_mad), 2) AS profit_mad,
    ROUND(100.0 * SUM(profit_mad) / NULLIF(SUM(revenue_mad), 0), 2) AS profit_margin_pct
FROM sales_data
GROUP BY category
ORDER BY profit_mad DESC;
