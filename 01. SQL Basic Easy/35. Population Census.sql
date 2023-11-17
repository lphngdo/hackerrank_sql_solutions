SELECT SUM(city.POPULATION)
  FROM CITY AS city
       INNER JOIN COUNTRY AS country
               ON city.COUNTRYCODE = country.CODE
 WHERE country.CONTINENT = 'Asia';
