-- Overall business performance
SELECT
    COUNT(*) AS Total_Orders,
    SUM(Units_Sold) AS Total_Units,
    ROUND(SUM(Revenue_MAD), 2) AS Total_Revenue,
    ROUND(SUM(Cost_MAD), 2) AS Total_Cost,
    ROUND(SUM(Profit_MAD), 2) AS Total_Profit,
    ROUND(SUM(Profit_MAD) * 100.0 / NULLIF(SUM(Revenue_MAD), 0), 2) AS Profit_Margin_Percent
FROM Sales_Data
WHERE TRIM(COALESCE(Order_ID, '')) <> '';
