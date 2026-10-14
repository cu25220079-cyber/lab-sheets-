 use CollegeDB;
 INSERT INTO Student (Student_ID, Name, Age, Course, City)
 VALUES (1, 'Rahul', 20, 'B.Tech', 'Meerut');

 INSERT INTO Student (Student_ID, Name, Age, Course, City)
 VALUES (2, 'Priya', 19, 'B.Sc', 'Delhi');

 INSERT INTO Student (Student_ID, Name, Age, Course, City)
 VALUES (3, 'Aman', 21, 'MBA', 'Lucknow');

 INSERT INTO Student (Student_ID, Name, Age, Course, City)
 VALUES (4, 'Sneha', 22, 'B.Tech', 'Meerut');

INSERT INTO Student (Student_ID, Name, Age, Course, City)
 VALUES (5, 'Ravi', 20, 'BCA', 'Agra');

 INSERT INTO Student (Student_ID, Name, Age, Course, City)
 VALUES (6, 'Neha', 23, 'MCA', 'Delhi');

 INSERT INTO Student (Student_ID, Name, Age, Course, City)
 VALUES 
(7, 'Karan', 20, 'B.Tech', 'Noida'),
 (8, 'Meena', 21, 'B.Sc', 'Delhi'),
 (9, 'Arjun', 22, 'MBA', 'Meerut');

INSERT INTO Employee (Emp_ID, Emp_Name, Department, Salary)
VALUES (101, 'Anil', 'HR', 35000),
      (102, 'Sunita', 'IT', 45000),
      (103, 'Raj', 'Finance', 40000);

 INSERT INTO Department (Dept_ID, Dept_Name, Location)
VALUES (1, 'HR', 'Delhi'),
       (2, 'IT', 'Noida'),
      (3, 'Finance', 'Mumbai');

 INSERT INTO Product (Product_ID, Product_Name, Price, Quantity)
VALUES (201, 'Laptop', 55000, 10),
       (202, 'Mobile', 20000, 25),
        (203, 'Tablet', 15000, 0);

 CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
     Email VARCHAR(100),
     Phone VARCHAR(15)
);

 INSERT INTO Customer (Customer_ID, Customer_Name, Email, Phone)
VALUES (301, 'Rohit', 'rohit@gmail.com', '9876543210'),
       (302, 'Pooja', 'pooja@gmail.com', '8765432109');

  CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
      Duration VARCHAR(20),
      Fees DECIMAL(10,2)
  );

INSERT INTO Course (Course_ID, Course_Name, Duration, Fees)
 VALUES (401, 'B.Tech', '4 Years', 250000),
        (402, 'MBA', '2 Years', 300000);

 INSERT INTO Student (Student_ID, Name, Course)
 VALUES (11, 'Komal', 'MBA');

 UPDATE Student SET City = 'Delhi' WHERE Student_ID = 1;

 UPDATE Employee SET Salary = 50000 WHERE Emp_ID = 101;

 UPDATE Employee SET Salary = Salary * 1.10;

 UPDATE Product SET Price = Price * 1.05;

 UPDATE Student SET Course = 'MCA' WHERE Student_ID = 2;

 UPDATE Employee SET Department = 'Marketing' WHERE Emp_ID = 102;

 UPDATE Student SET City = 'Delhi' WHERE City = 'Meerut';

 UPDATE Course SET Fees = 280000 WHERE Course_ID = 401;

 UPDATE Student 
 SET Name = 'Rohit Sharma', Age = 22, City = 'Mumbai'
 WHERE Student_ID = 3;

DELETE FROM Student WHERE Student_ID = 4;

DELETE FROM Student WHERE City = 'Agra';

 DELETE FROM Employee WHERE Salary < 40000;

DELETE FROM Product WHERE Quantity = 0;

 DELETE FROM Student WHERE Age < 20 AND City = 'Delhi';

-- Insert
INSERT INTO Student (Student_ID, Name, Age, Course, City)
VALUES (12, 'Sonia', 20, 'B.Sc', 'Lucknow');

-- Display
SELECT * FROM Student;

-- Update
UPDATE Student SET City = 'Delhi', Course = 'MBA' WHERE Student_ID = 12;

-- Display
SELECT * FROM Student;

-- Delete
DELETE FROM Student WHERE Student_ID = 12;

-- Display
SELECT * FROM Student;

