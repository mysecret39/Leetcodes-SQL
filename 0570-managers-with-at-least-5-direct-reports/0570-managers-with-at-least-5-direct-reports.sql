/* Write your T-SQL query statement below */
SELECT name FROM employee
WHERE id IN (SELECT managerid FROM (SELECT managerid, COUNT(*) AS total FROM employee
                                          GROUP BY managerid
                                          HAVING COUNT(*) >=5) AS a
                                        
                                         ) 

