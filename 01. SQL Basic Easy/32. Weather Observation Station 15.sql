-- Solution: MS SQL Server
SELECT FORMAT(ROUND(LONG_W, 4), '##.####')
  FROM STATION
 WHERE FORMAT(ROUND(LAT_N, 4), '##.####') = (
       SELECT FORMAT(ROUND(MAX(LAT_N), 4), '##.####')
         FROM STATION
        WHERE LAT_N < 137.2345
 );
-- Solution: MySQL
SELECT ROUND(LONG_W, 4)
  FROM STATION
 WHERE ROUND(LAT_N, 4) = (
       SELECT ROUND(MAX(LAT_N), 4)
         FROM STATION
        WHERE LAT_N < 137.2345
 );
