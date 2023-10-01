/* Write your T-SQL query statement below */

SELECT s.user_id
	,ROUND(CAST(SUM(CASE 
				WHEN action = 'confirmed'
					THEN 1
				ELSE 0
				END) AS DECIMAL(10, 2)) / CAST(COUNT(*) AS DECIMAL(10, 2)), 2) AS confirmation_rate
FROM Signups AS s
LEFT JOIN Confirmations AS c
	ON c.user_id = s.user_id
GROUP BY s.user_id