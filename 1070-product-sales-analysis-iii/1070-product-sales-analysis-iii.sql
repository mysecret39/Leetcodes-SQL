/* Write your T-SQL query statement below */
select product_id, year as first_year, quantity, price from
(
select * , rank() over(Partition by product_id order by year asc ) as r
from Sales
) a
where r = 1