
CREATE DATABASE CLIENTS;

USE CLIENTS;

DROP TABLE IF EXISTS Client_master;

-- (1) Create the table Client_master
CREATE TABLE Client_master (
    ClientNO VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    bal_due DECIMAL(10,2)
);

-- (2) Insert five records
INSERT INTO Client_master VALUES
('C101', 'Aman', '12 MG Road', 'Delhi', 'Delhi', 4500),
('C102', 'Priya', '45 Park Street', 'Mumbai', 'Maharashtra', 6200),
('C123', 'Rohit', '78 jaipur', 'Kolkata', 'West Bengal', 4800),
('C104', 'Neha', '22 delhi', 'Jaipur', 'Rajasthan', 7500),
('C105', 'Karan', '9 Sector 15', 'Chandigarh', 'Punjab', 3000);

-- (b)
SELECT Name
FROM Client_master
WHERE bal_due > 5000;

-- (c) 
UPDATE Client_master
SET bal_due = 5100
WHERE ClientNO = 'C123';


SELECT *
FROM Client_master
WHERE ClientNO = 'C123';

-- (d)
ALTER TABLE Client_master
RENAME TO Client12;

-- (e) 
SELECT bal_due AS BALANCE
FROM Client12;