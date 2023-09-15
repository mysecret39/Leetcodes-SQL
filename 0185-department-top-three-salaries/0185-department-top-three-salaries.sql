SELECT department, Employee, salary
FROM (
    SELECT DISTINCT
        d.name AS department, e.name AS Employee, salary,
        DENSE_RANK() OVER (PARTITION BY d.id ORDER BY salary DESC) AS salary_rank
    FROM Employee e
    JOIN department d ON d.id = e.departmentid
) ranked
WHERE salary_rank <= 3;
