CREATE TABLE EmployeeDetail (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    JoiningDate DATETIME,
    Department VARCHAR(50),
    Gender VARCHAR(10)
);
INSERT INTO EmployeeDetail (EmployeeID,  FirstName , LastName, Salary, JoiningDate, Department, Gender) values
(1, 'Vikas', 'Ahlawat', 600000.00, '2013-02-15 11:16:28.290', 'IT', 'Male'),
(2, 'Nikita', 'Jain', 530000.00, '2014-01-09 17:31:07.793', 'HR', 'Female'),
(3, 'Ashish', 'Kumar', 1000000.00, '2014-01-09 10:05:07.793', 'IT', 'Male'),
(4, 'Nikhil', 'Sharma', 480000.00, '2014-01-09 09:00:07.793', 'HR', 'Male'),
(5, 'Anish', 'Kadian', 500000.00, '2014-01-09 09:31:07.793', 'Payroll', 'Male');
select * from EmployeeDetail;
SELECT FirstName FROM EmployeeDetail;
SELECT UPPER(FirstName) AS FirstName FROM EmployeeDetail;
SELECT LOWER(FirstName) AS FirstName FROM EmployeeDetail;
SELECT CONCAT(FirstName, ' ', LastName) AS Name FROM EmployeeDetail;
SELECT * FROM EmployeeDetail WHERE FirstName = 'vikas';
SELECT * FROM EmployeeDetail WHERE FirstName LIKE 'a%';
SELECT * FROM EmployeeDetail WHERE FirstName LIKE '%k%';
SELECT * FROM EmployeeDetail WHERE FirstName LIKE '%h';
SELECT * FROM EmployeeDetail WHERE FirstName  REGEXP  '^[a-p]';



SELECT * FROM EmployeeDetail WHERE FirstName  REGEXP  '^[^a-p]';
SELECT * FROM EmployeeDetail WHERE Gender like '__le';
SELECT * FROM EmployeeDetail WHERE FirstName like 'A__'; 
SELECT * FROM EmployeeDetail WHERE FirstName like '%[%]%';
SELECT DISTINCT(Department) FROM Employeedetail ;
SELECT MAX(Salary) FROM EmployeeDetail;
SELECT MIN(Salary) FROM EmployeeDetail;
SELECT DATE_FORMAT(joiningdate , '%d%b%y')  AS  joiningdate FROM EmployeeDetail;
SELECT DATE_FORMAT(joiningdate , '%y/%m/%d')  AS  joiningdate FROM EmployeeDetail;
SELECT DATE_FORMAT(joiningdate , '%h:%i:%s') AS  joiningdate FROM EmployeeDetail;




SELECT YEAR(JoiningDate) AS JoiningYear FROM EmployeeDetail;
SELECT MONTH(JoiningDate) AS JoiningMonth FROM EmployeeDetail;
SELECT now();
SELECT utc_timestamp();
SELECT firstname, now() AS currentdate , joiningdate , TIMESTAMPDIFF(MONTH, joiningdate, now()) AS totalmonths FROM employeedetail;
SELECT firstname, now() AS currentdate , joiningdate , datediff(now(), joiningdate) AS totaldays FROM employeedetail;
SELECT* FROM employeedetail WHERE YEAR(joiningdate)= 2013;
SELECT* FROM employeedetail WHERE MONTH(joiningdate)=1;
SELECT* FROM employeedetail WHERE joiningdate between '2013-01-01'AND '2013-12-01';




SELECT * FROM EmployeeDetail LIMIT 1;
SELECT * FROM EmployeeDetail WHERE FirstName IN ('Vikas', 'Ashish', 'Nikhil');
SELECT * FROM EmployeeDetail WHERE FirstName NOT IN ('Vikas', 'Ashish', 'Nikhil');
SELECT RTRIM(FirstName) AS FirstName FROM EmployeeDetail;
SELECT LTRIM(FirstName) AS FirstName FROM EmployeeDetail;
SELECT 
    FirstName,
    CASE
        WHEN Gender = 'Male' THEN 'M'
        WHEN Gender = 'Female' THEN 'F'
        ELSE Gender END AS gender FROM employeedetail;
        
SELECT CONCAT('Hello ', FirstName) AS FirstName FROM EmployeeDetail;
SELECT * FROM EmployeeDetail WHERE Salary > 800000;
SELECT * FROM EmployeeDetail WHERE Salary < 700000;
SELECT * FROM EmployeeDetail WHERE Salary BETWEEN 500000 AND 600000;


SELECT MAX(Salary) FROM EmployeeDetail WHERE Salary < (SELECT MAX(Salary) FROM EmployeeDetail);









CREATE TABLE EmployeeDetail (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    JoiningDate DATETIME,
    Department VARCHAR(50),
    Gender VARCHAR(10)
);
INSERT INTO EmployeeDetail (EmployeeID,  FirstName , LastName, Salary, JoiningDate, Department, Gender) values
(1, 'Vikas', 'Ahlawat', 600000.00, '2013-02-15 11:16:28.290', 'IT', 'Male'),
(2, 'Nikita', 'Jain', 530000.00, '2014-01-09 17:31:07.793', 'HR', 'Female'),
(3, 'Ashish', 'Kumar', 1000000.00, '2014-01-09 10:05:07.793', 'IT', 'Male'),
(4, 'Nikhil', 'Sharma', 480000.00, '2014-01-09 09:00:07.793', 'HR', 'Male'),
(5, 'Anish', 'Kadian', 500000.00, '2014-01-09 09:31:07.793', 'Payroll', 'Male');
select * from EmployeeDetail;
SELECT FirstName FROM EmployeeDetail;
SELECT UPPER(FirstName) AS FirstName FROM EmployeeDetail;
SELECT LOWER(FirstName) AS FirstName FROM EmployeeDetail;
SELECT CONCAT(FirstName, ' ', LastName) AS Name FROM EmployeeDetail;
SELECT * FROM EmployeeDetail WHERE FirstName = 'vikas';
SELECT * FROM EmployeeDetail WHERE FirstName LIKE 'a%';
SELECT * FROM EmployeeDetail WHERE FirstName LIKE '%k%';
SELECT * FROM EmployeeDetail WHERE FirstName LIKE '%h';
SELECT * FROM EmployeeDetail WHERE FirstName  REGEXP  '^[a-p]';



SELECT * FROM EmployeeDetail WHERE FirstName  REGEXP  '^[^a-p]';
SELECT * FROM EmployeeDetail WHERE Gender like '__le';
SELECT * FROM EmployeeDetail WHERE FirstName like 'A__'; 
SELECT * FROM EmployeeDetail WHERE FirstName like '%[%]%';
SELECT DISTINCT(Department) FROM Employeedetail ;
SELECT MAX(Salary) FROM EmployeeDetail;
SELECT MIN(Salary) FROM EmployeeDetail;
SELECT DATE_FORMAT(joiningdate , '%d%b%y')  AS  joiningdate FROM EmployeeDetail;
SELECT DATE_FORMAT(joiningdate , '%y/%m/%d')  AS  joiningdate FROM EmployeeDetail;
SELECT DATE_FORMAT(joiningdate , '%h:%i:%s') AS  joiningdate FROM EmployeeDetail;




SELECT YEAR(JoiningDate) AS JoiningYear FROM EmployeeDetail;
SELECT MONTH(JoiningDate) AS JoiningMonth FROM EmployeeDetail;
SELECT now();
SELECT utc_timestamp();
SELECT firstname, now() AS currentdate , joiningdate , TIMESTAMPDIFF(MONTH, joiningdate, now()) AS totalmonths FROM employeedetail;
SELECT firstname, now() AS currentdate , joiningdate , datediff(now(), joiningdate) AS totaldays FROM employeedetail;
SELECT* FROM employeedetail WHERE YEAR(joiningdate)= 2013;
SELECT* FROM employeedetail WHERE MONTH(joiningdate)=1;
SELECT* FROM employeedetail WHERE joiningdate between '2013-01-01'AND '2013-12-01';




SELECT * FROM EmployeeDetail LIMIT 1;
SELECT * FROM EmployeeDetail WHERE FirstName IN ('Vikas', 'Ashish', 'Nikhil');
SELECT * FROM EmployeeDetail WHERE FirstName NOT IN ('Vikas', 'Ashish', 'Nikhil');
SELECT RTRIM(FirstName) AS FirstName FROM EmployeeDetail;
SELECT LTRIM(FirstName) AS FirstName FROM EmployeeDetail;
SELECT 
    FirstName,
    CASE
        WHEN Gender = 'Male' THEN 'M'
        WHEN Gender = 'Female' THEN 'F'
        ELSE Gender END AS gender FROM employeedetail;
        
SELECT CONCAT('Hello ', FirstName) AS FirstName FROM EmployeeDetail;
SELECT * FROM EmployeeDetail WHERE Salary > 800000;
SELECT * FROM EmployeeDetail WHERE Salary < 700000;
SELECT * FROM EmployeeDetail WHERE Salary BETWEEN 500000 AND 600000;


SELECT MAX(Salary) FROM EmployeeDetail WHERE Salary < (SELECT MAX(Salary) FROM EmployeeDetail);