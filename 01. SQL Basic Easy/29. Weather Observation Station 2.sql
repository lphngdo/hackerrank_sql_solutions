-- Solution: MS SQL Server
SELECT FORMAT(ROUND(SUM(LAT_N), 2), '##.##'),
       FORMAT(ROUND(SUM(LONG_W), 2), '##.##')
  FROM STATION;
-- Solution: MySQL
SELECT ROUND(SUM(LAT_N), 2),
       ROUND(SUM(LONG_W), 2)
  FROM STATION;
