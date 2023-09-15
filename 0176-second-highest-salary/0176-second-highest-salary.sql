# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary FROM employee
WHERE salary NOT IN(
SELECT MAX(salary) FROM employee)
LIMIT 1
