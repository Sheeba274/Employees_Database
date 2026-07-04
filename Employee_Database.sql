CREATE DATABASE EmployeeDB;
GO

USE EmployeeDB;
GO

CREATE TABLE Employees (
 EmployeeID INT PRIMARY KEY,
 EmployeeName VARCHAR(50),
 Department VARCHAR(30),
 Salary INT,
 JoiningDate DATE,
 Status VARCHAR(20)
);
GO

INSERT INTO Employees VALUES

(101,'Aisha','HR',35000,'2022-03-15','Active'),
(102,'Rahul','Sales',42000,'2021-07-10','Active'),
(103,'Priya','Finance',50000,'2020-11-20','Active'),
(104,'Arjun','IT',60000,'2019-09-05','Active'),
(105,'Neha','Marketing',45000,'2023-01-18','Active'),
(106,'Karan','Sales',39000,'2022-06-25','Inactive'),
(107,'Sneha','HR',37000,'2021-12-12','Active'),
(108,'Vikram','IT',65000,'2018-04-30','Active'),
(109,'Meera','Finance',48000,'2023-02-14','Active'),
(110,'Dev','Marketing',43000,'2022-08-09','Inactive');

SELECT * FROM Employees TABLES

SELECT * FROM Employees
WHERE Department='Sales';

SELECT * FROM Employees
WHERE Salary > 45000;

SELECT * FROM Employees
ORDER BY Salary DESC;

SELECT COUNT(*) AS TotalEmployees
FROM Employees;

SELECT AVG(Salary) AS AverageSalary
FROM Employees;

SELECT MAX(Salary) AS HighestSalary
FROM Employees;

SELECT MIN(Salary) AS LowestSalary
FROM Employees;

SELECT Department,
SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department;

SELECT Department,
AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 40000;

SELECT Department,
COUNT(*) AS Employees
FROM Employees
GROUP BY Department;

SELECT * FROM Employees
WHERE Department = 'IT' AND Salary > 50000;

UPDATE Employees
SET Salary=47000
WHERE EmployeeID=105;

DELETE FROM Employees
WHERE EmployeeID=110;