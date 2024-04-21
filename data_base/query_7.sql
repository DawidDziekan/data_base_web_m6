SELECT s.student_name, g.grade
FROM students s
    JOIN grades g ON s.student_name = g.student_id
    JOIN subjects sub ON g.subject_id = sub.subject_name
    JOIN groups gr ON s.group_id = gr.group_name
WHERE sub.subject_name = 'math' AND gr.group_name = 'Group indeed';
