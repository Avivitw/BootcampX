SELECT  teachers.name, students.name, assignments.name, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN teachers ON assistance_requests.teacher_id = teachers.id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY duration;


