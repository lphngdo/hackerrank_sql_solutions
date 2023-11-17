SELECT DISTINCT CITY
  FROM STATION
 WHERE LOWER(LEFT(CITY, 1)) NOT IN ('a', 'o', 'e', 'u', 'i')
    OR LOWER(RIGHT(CITY, 1)) NOT IN('a', 'o', 'e', 'u', 'i');
