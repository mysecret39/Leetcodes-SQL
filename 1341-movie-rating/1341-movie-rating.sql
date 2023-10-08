/* Write your T-SQL query statement below */
select name as results from (select top 1 u.name  from
movierating mr
join users u on mr.user_id = u.user_id
group by u.name
order by count(mr.movie_id) desc, u.name) p

union all

select title as result from ( select top 1 m.title from movierating mr
join movies m on mr.movie_id = m.movie_id
where mr.created_at like '2020-02-%'
group by m.title
order by avg(mr.rating*1.0)desc, m.title) q