DROP TABLE IF EXISTS rfm_scored;

CREATE TABLE rfm_scored AS
SELECT
  *,
  NTILE(4) OVER (ORDER BY Recency DESC)  AS R_Score,
  NTILE(4) OVER (ORDER BY Frequency ASC) AS F_Score,
  NTILE(4) OVER (ORDER BY Monetary ASC)  AS M_Score
FROM rfm_base;
