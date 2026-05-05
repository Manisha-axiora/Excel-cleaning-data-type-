-- Create Database
CREATE DATABASE CompanyDB;

-- Use Database
USE CompanyDB;

-- Create Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    DepartmentName VARCHAR(50),
    Salary DECIMAL(10,2),
    JoinDate DATE
);

-- Create Departments Table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
 DepartmentName   VARCHAR(50)
);
select *from  Employees
select *from  Departments

-- Insert into Employees
INSERT INTO Employees VALUES
(1, 'Amit', 'HR', 25000, '2022-01-15'),
(2, 'Neha', 'IT', 60000, '2021-03-10'),
(3, 'Raj', 'Finance', 45000, '2020-07-22'),
(4, 'Nikita', 'HR', 18000, '2023-02-01'),
(5, 'Karan', 'IT', 70000, '2019-11-30');

-- Insert into Departments
INSERT INTO Departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');

UPDATE Employees
SET Salary = Salary * 1.10
WHERE DepartmentName = 'HR';

DELETE FROM Employees
WHERE Salary < 20000;

SELECT * FROM Employees;
SELECT * FROM Employees
WHERE Salary BETWEEN 30000 AND 70000;


SELECT DepartmentName, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY DepartmentName;