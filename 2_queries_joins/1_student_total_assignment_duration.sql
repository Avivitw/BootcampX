SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN cohorts ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';