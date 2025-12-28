DROP TABLE IF EXISTS rfm_segments;

CREATE TABLE rfm_segments AS
SELECT
  *,
  CASE
    WHEN R_Score >= 3 AND F_Score >= 3 AND M_Score >= 3 THEN 'High Value'
    WHEN R_Score >= 3 AND F_Score >= 3 THEN 'Loyal'
    WHEN R_Score <= 2 AND M_Score >= 3 THEN 'At Risk (High Value)'
    WHEN R_Score <= 2 AND F_Score <= 2 THEN 'Lost'
    ELSE 'Others'
  END AS Segment
FROM rfm_scored;
