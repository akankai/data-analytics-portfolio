-- Customer-level metrics
SELECT
    Customer_ID,
    MAX(Order_Date) AS last_order,
    COUNT(DISTINCT Order_ID) AS frequency,
    ROUND(SUM(Revenue_MAD), 2) AS monetary,
    ROUND(SUM(Profit_MAD), 2) AS profit
FROM transactions
GROUP BY Customer_ID
ORDER BY monetary DESC;