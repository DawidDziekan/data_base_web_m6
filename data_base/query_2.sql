SELECT student_id, AVG(grade) AS average_grade
FROM grades
WHERE subject_id = 'math'
GROUP BY student_id
ORDER BY average_grade DESC
LIMIT 1;