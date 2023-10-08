/* Write your T-SQL query statement below */
SELECT
        MAX(num) AS num
FROM
(
        SELECT
                COUNT(num) AS count_num,
                num
        FROM
                mynumbers
        GROUP BY num
)AS a
WHERE a.count_num = 1;