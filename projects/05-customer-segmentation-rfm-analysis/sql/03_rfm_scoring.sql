-- RFM scoring with SQLite window functions
WITH metrics AS (
    SELECT Customer_ID,
           MAX(Order_Date) AS last_order,
           COUNT(DISTINCT Order_ID) AS frequency,
           SUM(Revenue_MAD) AS monetary
    FROM transactions
    GROUP BY Customer_ID
), scored AS (
    SELECT *,
           NTILE(5) OVER (ORDER BY julianday(last_order) DESC) AS recency_band,
           NTILE(5) OVER (ORDER BY frequency) AS frequency_band,
           NTILE(5) OVER (ORDER BY monetary) AS monetary_band
    FROM metrics
)
SELECT Customer_ID,
       last_order,
       frequency,
       ROUND(monetary,2) AS monetary,
       6 - recency_band AS r_score,
       frequency_band AS f_score,
       monetary_band AS m_score
FROM scored
ORDER BY monetary DESC;