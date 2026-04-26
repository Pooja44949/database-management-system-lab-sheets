CREATE DATABASE company;
USE company;
CREATE TABLE EMPLOYEES (
    Employee_Id INT,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Email VARCHAR(30),
    Phone_Number VARCHAR(15),
    Hire_Date DATE,
    Job_Id VARCHAR(10),
    Salary INT,
    Commission_Act DECIMAL(5,2),
    Manager_Id INT,
    Department_Id INT
);
SHOW TABLES;
DESC EMPLOYEES;
INSERT INTO EMPLOYEES VALUES
(101, 'Priya', 'Austin', 'john@gmail.com', '9876543210', '2020-01-10', 'IT_PROG', 5000, NULL, 100, 60),

(102, 'Neha', 'Sharma', 'neha@gmail.com', '9876543211', '2021-03-15', 'HR_REP', 4500, NULL, 100, 70),

(103, 'Amit', 'Verma', 'amit@gmail.com', '9876543212', '2019-07-20', 'SA_REP', 6000, 0.10, 101, 80),

(104, 'Riya', 'Austin', 'riya@gmail.com', '9876543213', '2022-05-25', 'IT_PROG', 4800, NULL, 102, 60),

(105, 'Karan', 'Mehta', 'karan@gmail.com', '9876543214', '2018-11-30', 'SA_MAN', 7000, 0.15, 100, 80);

SELECT * FROM EMPLOYEES;

SELECT Employee_Id, First_Name, Last_Name, Salary
FROM EMPLOYEES;

SELECT *
FROM EMPLOYEES
WHERE Manager_Id = 100;

SELECT First_Name, Last_Name
FROM EMPLOYEES
WHERE Salary >= 4800;

SELECT *
FROM EMPLOYEES
WHERE Last_Name = 'Austin';

SELECT First_Name, Last_Name
FROM EMPLOYEES
WHERE Department_Id IN (60, 70, 80);

SELECT DISTINCT Manager_Id
FROM EMPLOYEES;