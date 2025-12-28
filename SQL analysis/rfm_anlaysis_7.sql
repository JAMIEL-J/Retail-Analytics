DROP TABLE IF EXISTS rfm_base;

CREATE TABLE rfm_base AS
SELECT
  CustomerID,
  DATEDIFF('2011-12-10', MAX(InvoiceDate_dt)) AS Recency,
  COUNT(DISTINCT InvoiceNo) AS Frequency,
  ROUND(SUM(Revenue), 2) AS Monetary
FROM transactions
GROUP BY CustomerID;

SELECT COUNT(*) FROM rfm_base;
SELECT * FROM rfm_base LIMIT 5;
