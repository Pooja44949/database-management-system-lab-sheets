USE hospital_DB;

DROP TABLE IF EXISTS Employees;   -- पहले इसे हटाओ
DROP TABLE IF EXISTS Departments; -- फिर इसे

CREATE TABLE Departments (
    dept_no INT PRIMARY KEY,
    dept_name VARCHAR(50),
    dept_location VARCHAR(50)
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_salary INT,
    dept_no INT,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

INSERT INTO Departments VALUES
(1, 'HR', 'Delhi'),
(2, 'IT', 'Mumbai'),
(3, 'Finance', 'Pune'),
(4, 'Marketing', 'Chennai');

INSERT INTO Employees VALUES
(101, 'Amit', 40000, 1),
(102, 'Neha', 50000, 2),
(103, 'Rahul', 30000, 2),
(104, 'Priya', 60000, 4);

SELECT *
FROM Employees e
INNER JOIN Departments d
ON e.dept_no = d.dept_no;

SELECT e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_no = d.dept_no;

SELECT e.emp_name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_no = d.dept_no;

SELECT *
FROM Employees
WHERE emp_salary > (
    SELECT AVG(emp_salary) 
    FROM Employees
);