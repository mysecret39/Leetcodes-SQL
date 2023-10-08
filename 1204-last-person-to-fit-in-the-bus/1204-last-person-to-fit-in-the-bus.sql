/* Write your T-SQL query statement below */
WITH T AS (SELECT person_name,weight,turn, SUM(weight) OVER (ORDER BY turn) AS RunningWeightSum FROM Queue)

SELECT TOP 1 person_name FROM T
WHERE RunningWeightSum <= 1000
ORDER BY turn DESC