-- Create database only if it does not already exist
CREATE DATABASE IF NOT EXISTS CLIENTS;

-- Select the database
USE CLIENTS;

-- Delete old table if already present
DROP TABLE IF EXISTS Client_master;

-- Create table
CREATE TABLE Client_master (
    ClientNO VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    bal_due DECIMAL(10,2)
);

-- Insert 5 records
INSERT INTO Client_master (ClientNO, Name, Address, City, State, bal_due) VALUES
('C101', 'Aman',  '12 MG Road',      'Delhi',      'Delhi',         4500),
('C102', 'Priya', '45 Park Street',  'Mumbai',     'Maharashtra',   6200),
('C123', 'Rohit', '78 Jaipur Road',  'Kolkata',    'West Bengal',   4800),
('C104', 'Neha',  '22 Civil Lines',  'Jaipur',     'Rajasthan',     7500),
('C105', 'Pooja', '10 Green Park',   'Chandigarh', 'Punjab',        3000);

-- Display all records
SELECT * FROM Client_master;

-- (b) Find names of clients whose bal_due > 5000
SELECT Name
FROM Client_master
WHERE bal_due > 5000;

-- (c) Change the bal_due of ClientNO 'C123' to 5100
UPDATE Client_master
SET bal_due = 5100
WHERE ClientNO = 'C123';

-- Check updated record
SELECT * 
FROM Client_master
WHERE ClientNO = 'C123';

-- (d) Rename table Client_master to Client12
RENAME TABLE Client_master TO Client12;

-- Display all records from renamed table
SELECT * FROM Client12;

-- (e) Display only bal_due column
SELECT bal_due
FROM Client12;