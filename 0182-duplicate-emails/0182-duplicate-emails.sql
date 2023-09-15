# Write your MySQL query statement below
SELECT email FROM person
GROUP BY 1
HAVING COUNT(*) >=2