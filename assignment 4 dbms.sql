-- Create Database
CREATE DATABASE IF NOT EXISTS CollegeDB;

-- Select Database
USE CollegeDB;

-- Remove old table if already exists
DROP TABLE IF EXISTS CLASS;

-- Create Table
CREATE TABLE CLASS (
    ID INT PRIMARY KEY,
    Name VARCHAR(30)
);

-- Insert Initial Records
INSERT INTO CLASS VALUES
(1, 'Bravo'),
(2, 'Alex'),
(4, 'Cheng');

-- Display Initial Table
SELECT * FROM CLASS;

-- Insert new record
INSERT INTO CLASS VALUES (5, 'Rahul');

-- Save permanently
COMMIT;

-- Update record with ID = 5
UPDATE CLASS
SET Name = 'Abhijeet'
WHERE ID = 5;

-- Create Savepoint A
SAVEPOINT A;

-- Insert another record
INSERT INTO CLASS VALUES (6, 'Chris');

-- Create Savepoint B
SAVEPOINT B;

-- Insert another record
INSERT INTO CLASS VALUES (7, 'Bravo');

-- Create Savepoint C
SAVEPOINT C;

-- Display table after all inserts
SELECT * FROM CLASS;

-- Rollback to Savepoint B
ROLLBACK TO B;

-- Display table after rollback to B
SELECT * FROM CLASS;

-- Rollback to Savepoint A
ROLLBACK TO A;

-- Display final table
SELECT * FROM CLASS;