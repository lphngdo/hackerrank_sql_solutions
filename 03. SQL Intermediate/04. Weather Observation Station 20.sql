SELECT FORMAT(ROUND(LAT_N, 4), '##.####')
  FROM STATION AS s
 WHERE (SELECT COUNT(LAT_N)
          FROM STATION
         WHERE LAT_N < s.LAT_N) = (SELECT COUNT(LAT_N)
                                           FROM STATION
                                          WHERE LAT_N > s.LAT_N);
