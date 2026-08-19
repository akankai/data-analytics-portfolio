-- Segment performance from the customer-level RFM table
SELECT
    Segment,
    COUNT(*) AS customers,
    ROUND(SUM(Monetary),2) AS revenue_mad,
    ROUND(AVG(Recency),1) AS avg_recency_days,
    ROUND(AVG(Frequency),2) AS avg_frequency,
    ROUND(100.0 * SUM(Monetary) / NULLIF((SELECT SUM(Monetary) FROM customer_rfm),0),2) AS revenue_share_pct
FROM customer_rfm
GROUP BY Segment
ORDER BY revenue_mad DESC;