SELECT BST_OUTER.N,
       CASE WHEN BST_OUTER.P IS NULL THEN 'Root'
            WHEN (SELECT COUNT(*) FROM BST WHERE P = BST_OUTER.N) > 0 THEN 'Inner'
            ELSE 'Leaf' END
  FROM BST AS BST_OUTER
 ORDER BY BST_OUTER.N;