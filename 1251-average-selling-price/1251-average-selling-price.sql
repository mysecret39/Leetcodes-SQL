/* Write your T-SQL query statement below */
SELECT p.product_id, COALESCE(ROUND(CAST(SUM(units*price) AS DECIMAL(10,2))/SUM(units),2),0) AS average_price FROM prices p 
LEFT JOIN unitssold s ON p.product_id = s.product_id AND s.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id