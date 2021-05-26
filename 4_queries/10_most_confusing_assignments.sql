SELECT assignments.id, assignments.name, assignments.day, assignments.chapter,
  (SELECT COUNT(1) FROM assistance_requests WHERE assistance_requests.assignment_id = assignments.id) as total_requests
FROM assignments
ORDER BY total_requests DESC;