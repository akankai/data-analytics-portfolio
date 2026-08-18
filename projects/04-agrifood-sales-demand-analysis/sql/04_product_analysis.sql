-- Product performance and ranking
SELECT
    Product,
    Category,
    SUM(Units_Sold) AS Units_Sold,
    ROUND(SUM(Revenue_MAD), 2) AS Revenue,
    ROUND(SUM(Profit_MAD), 2) AS Profit,
    ROUND(SUM(Profit_MAD) * 100.0 / NULLIF(SUM(Revenue_MAD), 0), 2) AS Profit_Margin_Percent
FROM Sales_Data
WHERE TRIM(COALESCE(Order_ID, '')) <> ''
GROUP BY Product, Category
ORDER BY Revenue DESC;

-- Top 5 products by revenue
SELECT Product, Category, ROUND(SUM(Revenue_MAD), 2) AS Revenue
FROM Sales_Data
WHERE TRIM(COALESCE(Order_ID, '')) <> ''
GROUP BY Product, Category
ORDER BY Revenue DESC
LIMIT 5;

-- Top 5 products by profit
SELECT Product, Category,
       ROUND(SUM(Profit_MAD), 2) AS Profit,
       ROUND(SUM(Profit_MAD) * 100.0 / NULLIF(SUM(Revenue_MAD), 0), 2) AS Profit_Margin_Percent
FROM Sales_Data
WHERE TRIM(COALESCE(Order_ID, '')) <> ''
GROUP BY Product, Category
ORDER BY Profit DESC
LIMIT 5;

-- Bottom 5 products by revenue
SELECT Product, Category, ROUND(SUM(Revenue_MAD), 2) AS Revenue
FROM Sales_Data
WHERE TRIM(COALESCE(Order_ID, '')) <> ''
GROUP BY Product, Category
ORDER BY Revenue ASC
LIMIT 5;
