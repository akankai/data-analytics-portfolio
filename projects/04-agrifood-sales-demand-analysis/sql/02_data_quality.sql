-- Data quality checks
SELECT
    COUNT(*) AS Total_Rows,
    SUM(CASE WHEN TRIM(COALESCE(Order_ID, '')) = '' THEN 1 ELSE 0 END) AS Missing_Order_ID,
    SUM(CASE WHEN Product IS NULL OR TRIM(Product) = '' THEN 1 ELSE 0 END) AS Missing_Product,
    SUM(CASE WHEN Category IS NULL OR TRIM(Category) = '' THEN 1 ELSE 0 END) AS Missing_Category,
    SUM(CASE WHEN Region IS NULL OR TRIM(Region) = '' THEN 1 ELSE 0 END) AS Missing_Region,
    SUM(CASE WHEN Revenue_MAD IS NULL THEN 1 ELSE 0 END) AS Missing_Revenue,
    SUM(CASE WHEN Profit_MAD IS NULL THEN 1 ELSE 0 END) AS Missing_Profit
FROM Sales_Data;

-- Rows excluded from KPI calculations because they have no order identifier.
SELECT *
FROM Sales_Data
WHERE TRIM(COALESCE(Order_ID, '')) = '';
