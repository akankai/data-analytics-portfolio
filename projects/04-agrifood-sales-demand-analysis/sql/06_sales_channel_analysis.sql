-- Sales channel performance
SELECT
    Sales_Channel,
    COUNT(*) AS Orders,
    SUM(Units_Sold) AS Units_Sold,
    ROUND(SUM(Revenue_MAD), 2) AS Revenue,
    ROUND(SUM(Profit_MAD), 2) AS Profit,
    ROUND(SUM(Profit_MAD) * 100.0 / NULLIF(SUM(Revenue_MAD), 0), 2) AS Profit_Margin_Percent
FROM Sales_Data
WHERE TRIM(COALESCE(Order_ID, '')) <> ''
GROUP BY Sales_Channel
ORDER BY Revenue DESC;
