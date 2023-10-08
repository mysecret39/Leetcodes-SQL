/* Write your T-SQL query statement below */
SELECT query_name, round(avg(rating*1.0/position),2) AS quality, COALESCE(ROUND(SUM(CASE WHEN rating < 3 THEN 1.0 END)/COUNT(*)*100,2),0) AS poor_query_percentage FROM queries
GROUP BY query_name
