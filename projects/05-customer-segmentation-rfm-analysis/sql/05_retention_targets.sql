-- High-value customers with weak recency
SELECT
    Customer_ID,
    Recency,
    Frequency,
    ROUND(Monetary,2) AS monetary,
    Segment
FROM customer_rfm
WHERE Segment = 'At Risk - High Value'
ORDER BY Monetary DESC
LIMIT 50;