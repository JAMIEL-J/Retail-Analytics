SELECT Segment, COUNT(*) AS customers
FROM rfm_segments
GROUP BY Segment
ORDER BY customers DESC;
