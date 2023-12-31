-- Solution 01: Using SUBSTRING()
SELECT DISTINCT CITY
  FROM STATION
 WHERE LOWER(SUBSTRING(CITY, 1, 1)) IN ('a', 'o', 'e', 'u', 'i');
-- Solution 02: Using LEFT()
SELECT DISTINCT CITY
  FROM STATION
 WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'o', 'e', 'u', 'i');
-- Solution 03: Using LIKE
SELECT DISTINCT CITY
  FROM STATION
 WHERE CITY LIKE 'a%'
    OR CITY LIKE 'o%'
    OR CITY LIKE 'e%'
    OR CITY LIKE 'u%'
    OR CITY LIKE 'i%';
