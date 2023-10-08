/* Write your T-SQL query statement below */
select P.Project_id, ROUND(AVG(Cast(E.experience_years as decimal)),2) as average_years
from Project P
join Employee E ON
P.employee_id=E.employee_id

group by p.Project_id
order by P.Project_id