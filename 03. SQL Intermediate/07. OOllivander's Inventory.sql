SELECT wand.id,
       wand_property.age,
       wand.coins_needed,
       wand.power
  FROM Wands AS wand
       INNER JOIN Wands_Property AS wand_property
               ON wand.code = wand_property.code
 WHERE wand_property.is_evil = 0
   AND wand.coins_needed = (
       SELECT MIN(w.coins_needed)
         FROM Wands AS w
              INNER JOIN Wands_Property AS wp
                      ON w.code = wp.code
        WHERE w.power = wand.power
          AND wp.age = wand_property.age
   )
 ORDER BY wand.power DESC,
         wand_property.age DESC;
