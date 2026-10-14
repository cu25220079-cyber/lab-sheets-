 SELECT 10 + 5 AS AdditionResult;
 SELECT 20 - 7 AS SubtractionResult;
 SELECT 6 * 4 AS MultiplicationResult;
 SELECT 20 / 5 AS DivisionResult;
 use CollegeDB;
 SELECT Product_Name, Price, Quantity, (Price * Quantity) AS TotalAmount
 FROM Product;

 SELECT * FROM Student WHERE Age > 20 AND City = 'Delhi';
 SELECT * FROM Student WHERE City = 'Delhi' OR City = 'Meerut';
 SELECT * FROM Student WHERE NOT City = 'Delhi';
 SELECT * FROM Student WHERE Course = 'MBA' AND City = 'Lucknow';
 SELECT * FROM Employee WHERE Department = 'HR' OR Department = 'IT';

 SELECT * FROM Student WHERE City = 'Delhi';
 SELECT * FROM Employee WHERE Salary > 40000;
 SELECT * FROM Employee WHERE Salary < 30000;
 SELECT * FROM Employee WHERE Salary >= 35000 AND Salary <= 50000;
 SELECT * FROM Student WHERE City <> 'Delhi';

 SELECT * FROM Employee WHERE Salary BETWEEN 30000 AND 50000;
 SELECT * FROM Student WHERE City IN ('Delhi', 'Meerut', 'Lucknow');
 SELECT * FROM Student WHERE City NOT IN ('Delhi', 'Agra');
 SELECT * FROM Student WHERE Name LIKE 'P%';
 SELECT * FROM Student WHERE Email IS NULL;
 SELECT * FROM Student WHERE Email IS NOT NULL;

SELECT City FROM Student
UNION
SELECT Location FROM Department;

SELECT City FROM Student
UNION ALL
SELECT Location FROM Department;

SELECT City FROM Student
WHERE City IN (SELECT Location FROM Department);

SELECT City FROM Student
WHERE City NOT IN (SELECT Location FROM Department);

SELECT Student_ID, Name, Age, City, (Age * 2) AS DoubleAge
FROM Student
WHERE City = 'Delhi' AND Age > 20 AND Name LIKE 'N%';


