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
SELECT teacher.name, COALESCE(dept.name,'None')
FROM teacher left join dept on teacher.dept=dept.id;

---Use COUNT to show the number of teachers and the number of mobile phones.
SELECT count(name),count(mobile)
FROM teacher;

---Use COUNT and GROUP BY dept.name to show each department and the number of staff.
SELECT dept.name,count(teacher.name)
FROM teacher right join dept on teacher.dept=dept.id
group by dept.name;


---Use CASE to show the name of each teacher followed by 'Sci' if the teacher is in dept 1 or 2 and 'Art' otherwise.
SELECT name,
  case when dept=1 or dept=2
       then 'Sci'
       else 'Art'
  end
from teacher;

---SELECT name,
  case when dept=1 or dept=2
       then 'Sci'
       when dept=3
       then 'Art'
       else 'None'
  end
from teacher;