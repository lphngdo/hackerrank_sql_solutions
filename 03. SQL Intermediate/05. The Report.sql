SELECT CASE WHEN grade.Grade >= 8 THEN student.Name
            ELSE NULL END, 
       grade.Grade, 
       student.Marks
  FROM Students AS student
       CROSS JOIN Grades AS grade
 WHERE student.Marks BETWEEN grade.Min_Mark AND grade.Max_Mark
 ORDER BY grade.Grade DESC,
          student.Name;
