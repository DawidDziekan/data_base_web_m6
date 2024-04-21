SELECT s.group_id, AVG(g.grade) AS average_grade
FROM students s
JOIN grades g ON s.student_name = g.student_id
JOIN subjects sb ON g.subject_id = sb.subject_name
WHERE sb.subject_name = 'math'
GROUP BY s.group_id;