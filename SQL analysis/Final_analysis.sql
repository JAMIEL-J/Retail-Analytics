SELECT
  Segment,
  COUNT(*) AS customers,
  ROUND(SUM(Monetary), 2) AS total_revenue
FROM rfm_segments
GROUP BY Segment
ORDER BY total_revenue DESC;
