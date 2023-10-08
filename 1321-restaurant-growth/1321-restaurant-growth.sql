/* Write your T-SQL query statement below */
select
    visited_on,
    amount,
    round(1.0*amount/7,2) as average_amount 
from (
    select
        visited_on,
        (select sum(amount) from Customer c where c.visited_on between dateadd(d,-6,days.visited_on) and days.visited_on) as amount
    from (
        select distinct visited_on
        from Customer
        where visited_on>=dateadd(d,6,(select min(visited_on) from Customer))
    ) as days    
) as a
order by visited_on