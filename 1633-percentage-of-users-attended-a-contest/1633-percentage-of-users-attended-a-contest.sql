# Write your MySQL query statement below
SELECT r.contest_id, ROUND(COUNT(DISTINCT user_id)*100*1.0/(SELECT COUNT(*) FROM users),2) AS percentage FROM register r
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC