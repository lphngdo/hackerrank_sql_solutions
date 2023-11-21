SELECT H.hacker_id,
       H.name,
       COUNT(C.challenge_id) AS count_challenges
  FROM Hackers AS H
       INNER JOIN Challenges AS C
               ON H.hacker_id = C.hacker_id
 GROUP BY H.hacker_id,
          H.name
 HAVING COUNT(C.challenge_id) = (
        SELECT COUNT(C2.challenge_id) AS max_challenge
          FROM Challenges AS C2
         GROUP BY C2.hacker_id
         ORDER BY max_challenge DESC
         OFFSET 0 ROWS
         FETCH FIRST 1 ROWS ONLY)
      OR COUNT(C.challenge_id) IN (
         SELECT DISTINCT count_compare AS count_unique
           FROM (SELECT H2.hacker_id,
                        H2.name,
                        COUNT(C.challenge_id) AS count_compare
                   FROM Hackers AS H2
                        INNER JOIN Challenges AS C
                                ON H2.hacker_id = C.hacker_id
                  GROUP BY H2.hacker_id,
                           H2.name
           ) AS query
           GROUP BY count_compare
           HAVING COUNT(count_compare) = 1
      )
 ORDER BY count_challenges DESC,
          H.hacker_id;
