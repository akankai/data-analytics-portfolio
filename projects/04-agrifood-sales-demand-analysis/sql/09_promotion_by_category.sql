-- Promotion performance by category
-- Controls for product mix: are promotions concentrated in low-margin categories?
SELECT
    Category,
    Promotion,
    COUNT(*) AS Orders,
    SUM(Units_Sold) AS Units_Sold,
    ROUND(SUM(Revenue_MAD), 2) AS Revenue,
    ROUND(SUM(Profit_MAD), 2) AS Profit,
    ROUND(SUM(Profit_MAD) * 100.0 / NULLIF(SUM(Revenue_MAD), 0), 2) AS Profit_Margin_Percent
FROM Sales_Data
WHERE TRIM(COALESCE(Order_ID, '')) <> ''
GROUP BY Category, Promotion
ORDER BY Category, Promotion;
