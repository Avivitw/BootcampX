SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- SELECT SUM(duration) as total_duration
-- FROM assignment_submissions
-- INNER JOIN students ON assignment_submissions.student_id = students.id
-- WHERE students.name = 'Ibrahim Schimmel';