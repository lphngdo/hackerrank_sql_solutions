SELECT X, Y
  FROM Functions AS F
 WHERE EXISTS (SELECT *
  FROM Functions AS F1
 WHERE F.X = F1.Y
   AND F.Y = F1.X
   AND F1.X > F.X)
   AND X != Y
UNION
SELECT X, Y
  FROM Functions AS F
 WHERE X = Y
   AND ((SELECT COUNT(*)
           FROM Functions
          WHERE X = F.X
            AND Y = F.X) > 1)
 ORDER BY X;
