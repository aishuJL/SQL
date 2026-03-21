SELECT * FROM students;

SELECT * FROM courses;

SELECT s.first_name, s.last_name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c     ON e.course_id  = c.course_id
WHERE s.student_id = 1;

SELECT s.first_name, c.course_name, g.marks, g.grade_letter
FROM grades g
JOIN students s ON g.student_id = s.student_id
JOIN courses  c ON g.course_id  = c.course_id
ORDER BY g.marks DESC;

SELECT s.first_name, s.last_name, ROUND(AVG(g.marks), 2) AS average_marks
FROM students s
JOIN grades g ON s.student_id = g.student_id
GROUP BY s.student_id
ORDER BY average_marks DESC;

SELECT s.first_name,
       COUNT(*) AS total_classes,
       SUM(status = 'Present') AS present,
       ROUND(SUM(status = 'Present') * 100.0 / COUNT(*), 1) AS attendance_pct
FROM attendance a
JOIN students s ON a.student_id = s.student_id
GROUP BY s.student_id;

SELECT c.course_name, s.first_name, MAX(g.marks) AS top_marks
FROM grades g
JOIN students s ON g.student_id = s.student_id
JOIN courses  c ON g.course_id  = c.course_id
GROUP BY c.course_id;