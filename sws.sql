SELECT c.course_name, COUNT(s.stu_id)
FROM students as s
JOIN courses c ON c.course_id = s.course_id
GROUP BY c.course_name;

SELECT m.mod_name, COUNT(s.staff_id)
FROM modules AS m
JOIN staff_modules sm ON sm.module_id = m.mod_id
JOIN staff s ON s.staff_id = sm.staff_id
GROUP BY m.mod_name;

SELECT m.mod_name, ROUND(AVG(mr.submission_mark),2)
FROM modules AS m
JOIN modules_results mr ON mr.mod_id = m.mod_id
GROUP BY m.mod_name;

SELECT ts.session_type, r.room_name, r.room_capacity, COUNT(st.attended)
FROM teaching_sessions AS ts
JOIN rooms r ON r.room_id = ts.room_id
JOIN students_teaching st ON st.session_id = ts.session_id
GROUP BY ts.session_type, r.room_name, r.room_capacity
ORDER BY r.room_capacity DESC
LIMIT 15;