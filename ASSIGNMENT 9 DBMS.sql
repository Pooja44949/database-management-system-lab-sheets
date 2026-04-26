CREATE TABLE IF NOT EXISTS Departments (
    dept_no INT PRIMARY KEY,
    dept_name VARCHAR(50),
    dept_location VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_salary INT,
    dept_no INT,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- Grant all privileges
GRANT ALL PRIVILEGES 
ON Employees 
TO user1;

-- Grant some privileges
GRANT SELECT, INSERT 
ON Employees 
TO user1;

-- Revoke specific privilege first
REVOKE INSERT 
ON Employees 
FROM user1;

-- Then revoke all privileges
REVOKE ALL PRIVILEGES 
ON Employees 
FROM user1;

START TRANSACTION;

INSERT INTO Employees VALUES (101, 'Amit', 40000, 1);

SAVEPOINT sp1;

UPDATE Employees 
SET emp_salary = 45000 
WHERE emp_id = 101;

ROLLBACK TO sp1;

COMMIT;