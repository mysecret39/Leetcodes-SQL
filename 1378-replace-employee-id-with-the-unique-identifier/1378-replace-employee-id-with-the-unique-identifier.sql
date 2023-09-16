/* Write your T-SQL query statement below */
SELECT unique_id, name FROM employees e
LEFT JOIN employeeuni en ON en.id = e.id