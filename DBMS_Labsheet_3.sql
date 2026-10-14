 SELECT ABS(-25) AS Absolute_Value;

 SELECT ROUND(125.678, 2) AS Rounded_Value;

 SELECT CEIL(25.3) AS Ceiling_Value,
        FLOOR(25.9) AS Floor_Value;

 SELECT MOD(17, 5) AS Remainder;

 SELECT Emp_ID, Emp_Name, ROUND(Salary) AS Rounded_Salary
 FROM Employee;

 SELECT COUNT(*) AS Total_Students
 FROM Student;

 SELECT SUM(Salary) AS Total_Salary
 FROM Employee;

 SELECT AVG(Salary) AS Average_Salary
 FROM Employee;

 SELECT MAX(Salary) AS Highest_Salary
 FROM Employee;

 SELECT MIN(Salary) AS Lowest_Salary
 FROM Employee;

 SELECT UPPER(Name) AS Upper_Name
 FROM Student;

 SELECT LOWER(Name) AS Lower_Name
 FROM Student;

 SELECT Name, LENGTH(Name) AS Name_Length
 FROM Student;

 SELECT CONCAT('Rahul', ' ', 'Sharma') AS Full_Name;

 SELECT SUBSTRING('COMPUTER', 1, 4) AS Result;

 SELECT CAST(12345 AS CHAR) AS String_Value;

 SELECT CAST('5000' AS UNSIGNED) AS Numeric_Value;

 SELECT DATE_FORMAT(CURDATE(), '%d-%m-%Y') AS Formatted_Date;

 SELECT CAST(45.67 AS SIGNED) AS Integer_Value;

 SELECT CONVERT('2025-09-15', DATE) AS Converted_Date;

 SELECT CURDATE() AS Current_Date;

 SELECT YEAR(CURDATE()) AS Year,
        MONTH(CURDATE()) AS Month,
        DAY(CURDATE()) AS Day;

 SELECT DATEDIFF('2025-12-31', '2025-01-01') AS Days_Difference;

 SELECT DATE_ADD(CURDATE(), INTERVAL 10 DAY) AS New_Date;

SELECT Emp_ID,
       Emp_Name,
       DATE_FORMAT(Joining_Date, '%d-%m-%Y') AS Formatted_Joining_Date
FROM Employee;
