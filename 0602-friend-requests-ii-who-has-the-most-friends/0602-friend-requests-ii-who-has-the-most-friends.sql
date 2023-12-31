/* Write your T-SQL query statement below */
SELECT TOP 1 id, COUNT(*) AS num FROM
(
SELECT  requester_id AS id FROM RequestAccepted 
UNION ALL
SELECT  accepter_id AS id FROM RequestAccepted 
) AS a
GROUP BY id
ORDER BY COUNT(*) DESC
