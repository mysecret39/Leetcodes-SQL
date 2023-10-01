/* Write your T-SQL query statement below */
SELECT name, bonus FROM employee e
LEFT JOIN bonus b ON b.empid = e.empid
WHERE bonus<1000 OR bonus IS NULL