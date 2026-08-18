-- Project 04: Overall performance
-- SQLite
SELECT
    COUNT(*) AS total_orders,
    SUM(units_sold) AS total_units_sold,
    ROUND(SUM(revenue_mad), 2) AS total_revenue_mad,
    ROUND(SUM(cost_mad), 2) AS total_cost_mad,
    ROUND(SUM(profit_mad), 2) AS total_profit_mad,
    ROUND(100.0 * SUM(profit_mad) / NULLIF(SUM(revenue_mad), 0), 2) AS profit_margin_pct
FROM sales_data;
