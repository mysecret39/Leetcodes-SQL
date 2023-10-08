/* Write your T-SQL query statement below */
SELECT E.employee_id, max(E.department_id) as department_id
FROM Employee E
WHERE primary_flag = 'Y'
 OR (primary_flag = 'N' and not exists(SELECT 1 FROM Employee E2 WHERE E.employee_id = E2.employee_id AND E2.primary_flag = 'Y'))
GROUP BY E.employee_id
HAVING count(*) = 1