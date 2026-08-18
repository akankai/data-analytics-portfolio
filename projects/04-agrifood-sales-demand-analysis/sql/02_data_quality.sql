-- Data-quality checks

-- Count completely blank records
SELECT COUNT(*) AS Empty_Rows
FROM Sales_Data
WHERE TRIM(COALESCE(Date, '')) = ''
  AND TRIM(COALESCE(Order_ID, '')) = ''
  AND TRIM(COALESCE(Product, '')) = '';

-- Inspect records with a missing category
SELECT *
FROM Sales_Data
WHERE Category IS NULL OR TRIM(Category) = '';

-- Analytical queries in this project exclude invalid/blank orders with:
-- WHERE TRIM(COALESCE(Order_ID, '')) <> ''
