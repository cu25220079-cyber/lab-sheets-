
ALTER TABLE Student ADD Dept_ID INT;

SELECT Student.Name, Department.Dept_Name
 FROM Student
INNER JOIN Department ON Student.Dept_ID = Department.Dept_ID;

 SELECT Student.Name, Department.Dept_Name
 FROM Student
 INNER JOIN Department ON Student.Dept_ID = Department.Dept_ID;

 ALTER TABLE Employee ADD Dept_ID INT;
 SELECT Employee.Emp_Name, Department.Dept_Name
 FROM Employee
 INNER JOIN Department ON Employee.Dept_ID = Department.Dept_ID;

SELECT Student.Name, Course.Course_Name, Course.Duration, Course.Fees
FROM Student
INNER JOIN Course ON Student.Course = Course.Course_Name;

SELECT Student.Name, Department.Dept_Name
FROM Student
INNER JOIN Department ON Student.Dept_ID = Department.Dept_ID
WHERE Department.Dept_Name = 'IT';

SELECT Student.Name, Department.Dept_Name
FROM Student
LEFT JOIN Department ON Student.Dept_ID = Department.Dept_ID;

SELECT Student.Name, Department.Dept_Name
FROM Student
LEFT JOIN Department ON Student.Dept_ID = Department.Dept_ID;

SELECT Student.Name, Department.Dept_Name
FROM Student
RIGHT JOIN Department ON Student.Dept_ID = Department.Dept_ID;

SELECT Department.Dept_Name, Student.Name
FROM Department
RIGHT JOIN Student ON Student.Dept_ID = Department.Dept_ID;

SELECT Student.Name
FROM Student
LEFT JOIN Department ON Student.Dept_ID = Department.Dept_ID
WHERE Department.Dept_ID IS NULL;

SELECT Department.Dept_Name
FROM Department
LEFT JOIN Student ON Student.Dept_ID = Department.Dept_ID
WHERE Student.Student_ID IS NULL;

SELECT Student.Name, Department.Dept_Name
FROM Student
LEFT JOIN Department ON Student.Dept_ID = Department.Dept_ID
UNION
SELECT Student.Name, Department.Dept_Name
FROM Student
RIGHT JOIN Department ON Student.Dept_ID = Department.Dept_ID;

SELECT Student.Name, Course.Course_Name
FROM Student
CROSS JOIN Course;

SELECT COUNT(*) AS TotalCombinations
FROM Student
CROSS JOIN Course;

SELECT *
FROM Student
NATURAL JOIN Department;

SELECT * FROM Student NATURAL JOIN Department;
SELECT * FROM Student INNER JOIN Department ON Student.Dept_ID = Department.Dept_ID;

-- ALTER TABLE Employee ADD Manager_ID INT;
SELECT E.Emp_Name AS Employee, M.Emp_Name AS Manager
FROM Employee E
INNER JOIN Employee M ON E.Manager_ID = M.Emp_ID;

SELECT E.Emp_Name, M.Emp_Name AS Manager
FROM Employee E
LEFT JOIN Employee M ON E.Manager_ID = M.Emp_ID;

SELECT Student.Name, Department.Dept_Name, Course.Course_Name
FROM Student
INNER JOIN Department ON Student.Dept_ID = Department.Dept_ID
INNER JOIN Course ON Student.Course = Course.Course_Name;

SELECT Student.Name, Course.Course_Name, Department.Dept_Name
FROM Student
INNER JOIN Department ON Student.Dept_ID = Department.Dept_ID
INNER JOIN Course ON Student.Course = Course.Course_Name;

SELECT E.Emp_Name, E.Salary, D.Dept_Name
FROM Employee E
INNER JOIN Department D ON E.Dept_ID = D.Dept_ID
WHERE E.Salary > (
    SELECT AVG(Salary) FROM Employee WHERE Dept_ID = E.Dept_ID
);

SELECT D.Dept_Name, COUNT(S.Student_ID) AS StudentCount
FROM Department D
INNER JOIN Student S ON D.Dept_ID = S.Dept_ID
GROUP BY D.Dept_Name
ORDER BY StudentCount DESC
LIMIT 1;

SELECT D.Dept_Name, COUNT(S.Student_ID) AS TotalStudents
FROM Department D
LEFT JOIN Student S ON D.Dept_ID = S.Dept_ID
GROUP BY D.Dept_Name;

SELECT C.Course_Name, COUNT(S.Student_ID) AS TotalStudents
FROM Course C
LEFT JOIN Student S ON C.Course_Name = S.Course
GROUP BY C.Course_Name;

SELECT D.Dept_Name, C.Course_Name, COUNT(S.Student_ID) AS TotalStudents
FROM Department D
LEFT JOIN Student S ON D.Dept_ID = S.Dept_ID
LEFT JOIN Course C ON S.Course = C.Course_Name
GROUP BY D.Dept_Name, C.Course_Name
ORDER BY D.Dept_Name, C.Course_Name;
