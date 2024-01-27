/*
You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.
*/

SELECT IF(Grades.Grade >= 8,Students.Name,"NULL"), Grades.Grade, Students.Marks 
FROM Students, Grades
WHERE Students.Marks >= Grades.Min_Mark AND Students.Marks <= Grades.Max_Mark
