-- Solution: MS SQL Server
SELECT FORMAT(ROUND(LONG_W, 4), '##.####')
  FROM STATION
 WHERE FORMAT(ROUND(LAT_N, 4), '##.####') = (
       SELECT FORMAT(ROUND(MIN(LAT_N), 4), '##.####')
         FROM STATION
        WHERE LAT_N > 38.7780
 );
-- Solution: MySQL
SELECT ROUND(LONG_W, 4)
  FROM STATION
 WHERE ROUND(LAT_N, 4) = (
       SELECT ROUND(MIN(LAT_N), 4)
         FROM STATION
        WHERE LAT_N > 38.7780
 );
