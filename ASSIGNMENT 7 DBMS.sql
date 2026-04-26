USE hospital_db;
DROP TABLE Teacher;
CREATE TABLE Teacher (
    Name VARCHAR(50),
    DeptNo INT,
    DateOfJoining DATE,
    DeptName VARCHAR(50),
    Location VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Teacher VALUES
('Amit Sharma', 101, '2018-06-12', 'Mathematics', 'Delhi', 40000),
('Neha Verma', 102, '2019-07-15', 'Commerce', 'Mumbai', 35000),
('Raj Kumar', 103, '2020-01-20', 'Mathematics', 'Chennai', 42000),
('Pooja Singh', 104, '2017-03-10', 'Commerce', 'Kolkata', 38000),
('Anil Gupta', 105, '2021-09-05', 'Science', 'Delhi', 30000);

START TRANSACTION;
SET SQL_SAFE_UPDATES = 0;
UPDATE Teacher
SET Salary = Salary + (Salary * 0.25)
WHERE DeptName = 'Mathematics';

ROLLBACK;

START TRANSACTION;

UPDATE Teacher
SET Salary = Salary + (Salary * 0.15)
WHERE DeptName = 'Commerce';

COMMIT;

SELECT * FROM Teacher;