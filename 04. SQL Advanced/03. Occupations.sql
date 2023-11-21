SELECT [Doctor],
       [Professor],
       [Singer],
       [Actor]
  FROM (SELECT Name,
               Occupation,
               RANK() OVER(PARTITION BY Occupation ORDER BY Name) AS ranked
          FROM OCCUPATIONS) AS rank_occupation
PIVOT
(
  MAX(Name)
  FOR Occupation IN ([Doctor], [Professor], [Singer], [Actor])
) AS pivot_table;
