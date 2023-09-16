/* Write your T-SQL query statement below */
SELECT customer_id, COUNT(*) AS count_no_trans FROM visits v
LEFT JOIN transactions t ON t.visit_id = v.visit_id 
WHERE transaction_id IS null
GROUP BY customer_id