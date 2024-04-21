SELECT l.lecturer_name, AVG(g.grade) AS average_grade
FROM lecturers l
JOIN subjects sub ON l.lecturer_name = sub.lecturer_id
JOIN grades g ON sub.subject_name = g.subject_id
WHERE sub.subject_name = 'math' AND l.lecturer_name = 'Elaine Perez'
GROUP BY l.lecturer_name;