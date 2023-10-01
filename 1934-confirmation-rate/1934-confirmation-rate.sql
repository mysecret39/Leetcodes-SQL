/* Write your T-SQL query statement below */

SELECT c.user_id, COALESCE(CAST((CAST(confirmation AS DECIMAL(10,2)) /CAST(timeout AS DECIMAL(10,2))) AS DECIMAL(10,2)),0) AS confirmation_rate FROM
(SELECT user_id FROM signups) AS c
LEFT JOIN
(SELECT user_id, COUNT(*) AS timeout FROM confirmations
GROUP BY user_id) AS a ON c.user_id = a.user_id
LEFT JOIN 
(SELECT user_id, COUNT(*) AS confirmation FROM confirmations
WHERE action = 'confirmed'
GROUP BY user_id
) AS b ON a.user_id = b.user_id