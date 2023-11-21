SELECT Name
  FROM Students AS S
       INNER JOIN Friends AS F
               ON S.ID = F.ID
       INNER JOIN Packages AS P1
               ON S.ID = P1.ID
       INNER JOIN Packages AS P2
               ON F.Friend_ID = P2.ID
 WHERE P1.Salary < P2.Salary
 ORDER BY P2.Salary;
