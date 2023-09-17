/* Write your T-SQL query statement below */
SELECT sell_date, COUNT(DISTINCT product) AS num_sold, STRING_AGG(product,',') AS products FROM
(
  SELECT DISTINCT sell_date,product FROM activities

) AS a
GROUP By sell_date