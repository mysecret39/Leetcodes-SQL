/* Write your T-SQL query statement below */
select 
  p.product_name, 
  sum(o.unit) as unit 
from 
  orders o 
  left join products p on o.product_id = p.product_id 
where 
  o.order_date > '2020-01-31' 
  and o.order_date < '2020-03-01' 
group by 
  p.product_name 
having 
  sum(unit)>= 100
