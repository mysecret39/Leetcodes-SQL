/* Write your T-SQL query statement below */
SELECT c.name FROM customer c
WHERE referee_id NOT IN (2) OR referee_id is NULL