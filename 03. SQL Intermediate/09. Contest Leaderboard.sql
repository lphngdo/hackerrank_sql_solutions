SELECT S.hacker_id,
       (SELECT name
          FROM Hackers AS H
         WHERE H.hacker_id = S.hacker_id) AS name,
       SUM(S.score) AS sum_score
  FROM (SELECT hacker_id,
               MAX(score) AS score
          FROM Submissions
         GROUP BY hacker_id,
                  challenge_id) AS S
 GROUP BY S.hacker_id
 HAVING SUM(S.score) > 0
 ORDER BY sum_score DESC, 
          S.hacker_id;
