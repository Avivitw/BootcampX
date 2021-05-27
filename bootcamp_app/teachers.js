let args = process.argv.slice(2);
const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx2'

});

pool.query(`
SELECT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${args[0]}%'
GROUP BY cohorts.name, teachers.name
ORDER BY teachers.name;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}:  ${row.teacher}`);
  })
});