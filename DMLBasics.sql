#Example 1
CREATE database if not exists Employee; #Creating database, given that it does not exist for 'Employee'.
USE Employee; #Using the database Employee to run our commands next.

CREATE TABLE Employee #Creating table
(EmpID INT NOT NULL PRIMARY KEY,
ID INT NOT NULL,
EmpName VARCHAR(50) NOT NULL,
Designation VARCHAR(50),
Department VARCHAR(50) NULL DEFAULT 'Accounts',
Joining_Date DATETIME);

CREATE TABLE Location 
(LocationID INT NOT NULL PRIMARY KEY,
EmpID INT NOT NULL,
Street_Address VARCHAR(100),
Postal_Code VARCHAR(20),
City VARCHAR(50),
FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)); #Creating foreign key that uses EmpID from table 'Employee'.


#Example 2 
CREATE DATABASE IF NOT EXISTS customer;
USE customer;

CREATE TABLE Companies
(company_id INT NOT NULL PRIMARY KEY,
company_name VARCHAR(50) NOT NULL,
headquarters_phone_number INT);

CREATE TABLE Customers
(customer_id INT NOT NULL PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email_address VARCHAR(50) NOT NULL,
number_of_complaints INT NOT NULL);

CREATE TABLE Items
(item_code INT NOT NULL PRIMARY KEY,
item VARCHAR(50),
unit_price INT,
company_id INT NOT NULL,
FOREIGN KEY (company_id) REFERENCES Companies(company_id));

CREATE TABLE Sales
(date_of_purchase DATETIME,
customer_id INT NOT NULL,
item_code INT NOT NULL,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (item_code) REFERENCES Items(item_code));









