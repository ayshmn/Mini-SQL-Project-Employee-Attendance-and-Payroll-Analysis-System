CREATE DATABASE HR_Analytics;
USE HR_Analytics;

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

CREATE TABLE Attendance (
    Attendance_ID INT PRIMARY KEY,
    Employee_ID INT,
    Status VARCHAR(10),
    Attendance_Date DATE
);

INSERT INTO Employees VALUES
(1, 'Ayesha', 'IT', 50000),
(2, 'Rahul', 'HR', 40000),
(3, 'Sneha', 'Finance', 60000),
(4, 'Arjun', 'IT', 55000),
(5, 'Neha', 'Admin', 35000),
(6, 'Rohit', 'IT', 52000),
(7, 'Priya', 'HR', 42000),
(8, 'Karan', 'Finance', 65000),
(9, 'Anjali', 'IT', 48000),
(10, 'Vikas', 'Admin', 38000);

INSERT INTO Attendance VALUES
(101, 1, 'Present', '2024-01-10'),
(102, 2, 'Absent', '2024-01-10'),
(103, 3, 'Present', '2024-01-10'),
(104, 4, 'Present', '2024-01-10'),
(105, 5, 'Absent', '2024-01-10'),
(106, 6, 'Present', '2024-01-10'),
(107, 7, 'Present', '2024-01-10'),
(108, 8, 'Present', '2024-01-10'),
(109, 9, 'Absent', '2024-01-10'),
(110, 10, 'Present', '2024-01-10');

SELECT COUNT(*) AS Total_Employees FROM Employees;

SELECT Department, COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department;

SELECT Department, AVG(Salary) AS Avg_Salary
FROM Employees
GROUP BY Department;

SELECT Employee_Name, Salary
FROM Employees
WHERE Salary > 45000;

SELECT Status, COUNT(*) AS Count
FROM Attendance
GROUP BY Status;