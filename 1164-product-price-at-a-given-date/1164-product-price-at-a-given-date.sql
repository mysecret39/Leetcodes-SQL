/* Write your T-SQL query statement below */
select distinct
  product_id,
  coalesce((select top 1
              new_price 
            from products p2 
            where p2.change_date<='2019-08-16'
              and p2.product_id=p1.product_id
            order by change_date desc),
            10) price
from products p1
