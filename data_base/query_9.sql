SELECT DISTINCT sub.subject_name
FROM students s
JOIN grades g ON s.student_name = g.student_id
JOIN subjects sub ON g.subject_id = sub.subject_name
WHERE s.student_name = 'Roger Wong'