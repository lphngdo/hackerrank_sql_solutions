SELECT DISTINCT CITY
  FROM STATION
 WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'o', 'e', 'u', 'i')
   AND LOWER(RIGHT(CITY, 1)) IN ('a', 'o', 'e', 'u', 'i');
