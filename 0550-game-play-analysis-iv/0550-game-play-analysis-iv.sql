/* Write your T-SQL query statement below */

SELECT ROUND(CAST(SUM(CASE WHEN b.event_date is not null THEN 1 else 0 END) as float)/COUNT(a.player_id),2) as fraction
FROM (SELECT player_id, min(event_date) as event_date FROM Activity GROUP BY player_id) a
LEFT JOIN (SELECT player_id, event_date FROM Activity) b
ON a.player_id = b.player_id
AND b.event_date = DATEADD(day, 1, a.event_date)