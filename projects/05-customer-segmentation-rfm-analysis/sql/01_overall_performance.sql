-- Overall portfolio KPIs
SELECT
    COUNT(*) AS orders,
    COUNT(DISTINCT Customer_ID) AS customers,
    ROUND(SUM(Revenue_MAD), 2) AS revenue_mad,
    ROUND(SUM(Profit_MAD), 2) AS profit_mad,
    ROUND(100.0 * SUM(Profit_MAD) / NULLIF(SUM(Revenue_MAD), 0), 2) AS profit_margin_pct
FROM transactions;