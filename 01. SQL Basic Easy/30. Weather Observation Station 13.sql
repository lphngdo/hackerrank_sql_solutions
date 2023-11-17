-- Solution: MS SQL Server
SELECT FORMAT(ROUND(SUM(LAT_N), 4), '##.####')
  FROM STATION
 WHERE LAT_N BETWEEN 38.7880 AND 137.2345;
-- Solution: MySQL
SELECT ROUND(SUM(LAT_N), 4)
  FROM STATION
 WHERE LAT_N BETWEEN 38.7880 AND 137.2345;
