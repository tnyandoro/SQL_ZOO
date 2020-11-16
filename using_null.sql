---List the teachers who have NULL for their department.
SELECT name
FROM teacher
WHERE dept is null

--Note the INNER JOIN misses the teachers with no department and the departments with no teach
SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id);

---Use a different JOIN so that all teachers are listed.
SELECT teacher.name,dept.name
FROM teacher left join dept on teacher.dept=dept.id;

---Use a different JOIN so that all departments are listed.
select teacher.name,dept.name
from teacher right join dept on teacher.dept=dept.id;

---Using the COALESCE function
SELECT name, COALESCE(mobile,'07986 444 2266')
FROM teacher;

---Use the COALESCE function and a LEFT JOIN to print the teacher name and department name.

