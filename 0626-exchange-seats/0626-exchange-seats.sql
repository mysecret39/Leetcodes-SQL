/* Write your T-SQL query statement below */
select id,
    Coalesce(case when row_number() over (order by id) % 2 = 1
    then lead(student) over (order by Id)
    else lag(student) over (order by Id) end, (select student from Seat where id = (select max(id) id from seat where id % 2 <> 0))) student
from Seat