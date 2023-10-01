/* Write your T-SQL query statement below */
SELECT e.employee_id, name, a.reports_count, a.average_age FROM employees e
JOIN (
SELECT reports_to, ROUND(AVG(CAST(age AS DECIMAL)),0) AS average_age, COUNT(*) AS reports_count FROM employees
WHERE reports_to IS NOT NULL
GROUP BY reports_to
    ) AS a ON e.employee_id = a.reports_to