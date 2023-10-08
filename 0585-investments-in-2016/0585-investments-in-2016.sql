/* Write your T-SQL query statement below */
SELECT 
ROUND(SUM(tiv_2016),2) AS tiv_2016 
FROM Insurance AS i
WHERE tiv_2015 IN (SELECT tiv_2015 FROM Insurance AS ins WHERE ins.pid!=i.pid) 
AND NOT EXISTS (
    SELECT 1
    FROM (
        SELECT lat, lon, COUNT(*) AS count
        FROM Insurance 
        GROUP BY lat,lon
    ) AS insu
    WHERE i.lat=insu.lat AND i.lon=insu.lon AND insu.count>1
)