#Creating indexes for table, helpful for querying and obtaining results from db much faster.
CREATE INDEX idx_last_name
ON Customer.customers(last_name);

SELECT * FROM customer.customers; #Now after creating index, the select command retrives data faster.

ALTER TABLE Customers #Drops the index.
DROP INDEX idx_last_name;


#Setting UNIQUE constraint.
CREATE DATABASE Test;
USE Test;

CREATE TABLE Persons
(ID INT NOT NULL,
LastName VARCHAR(255) NOT NULL,
FirstName VARCHAR(255) NOT NULL,
Age INT,
Unique(ID)); #Unique means that when a duplicate value is entered it returns a error of duplicate, so we'll have to re-enter the data.

INSERT INTO Persons
(ID,LastName,FirstName,Age)
VALUES
(1,'Mahesh','Saai',29),
(1,'John','Wick',30); #Shows error because ID should be unique.


#Setting CHECK constraint.
CREATE TABLE Persons
(ID INT NOT NULL,
LastName VARCHAR(255) NOT NULL,
FirstName VARCHAR(255) NOT NULL,
Age INT,
CHECK(Age>18)); #Checks during INSERT command that the age is above 18 or else it throws an error.

INSERT INTO Persons
(ID,LastName,FirstName,Age)
VALUES
(1,'Mahesh','Saai',17); #Returns error that constraint is violated since age is given lesser than 18. 





