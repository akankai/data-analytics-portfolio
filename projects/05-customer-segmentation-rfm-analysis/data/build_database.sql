-- SQLite database build script
-- Run after generating customer_transactions.csv.
-- The Python generator also builds the same database automatically.

.mode csv
.import customer_transactions.csv transactions

CREATE TABLE IF NOT EXISTS customer_rfm AS
WITH metrics AS (
    SELECT Customer_ID,
           MAX(Order_Date) AS Last_Order,
           COUNT(DISTINCT Order_ID) AS Frequency,
           SUM(Revenue_MAD) AS Monetary
    FROM transactions
    GROUP BY Customer_ID
)
SELECT * FROM metrics;

CREATE INDEX IF NOT EXISTS idx_transactions_customer ON transactions(Customer_ID);
CREATE INDEX IF NOT EXISTS idx_customer_rfm_customer ON customer_rfm(Customer_ID);