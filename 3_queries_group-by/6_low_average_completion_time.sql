SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as avg_duration_est
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration;