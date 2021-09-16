USE customer;

#SUBSTRING
SELECT first_name, SUBSTRING(first_name,2,3) AS ExtractString FROM customers; #Gets the 2nd character from the first name and continues till the 3rd character from the 2nd character.


#ORDER BY, GROUP BY, HAVING
#IMP: Flow of logic is SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY.

USE northwind;
SELECT OrderID,Quantity, CASE WHEN Quantity > 1 THEN "Quantity is greater than 1" WHEN Quantity < 2 THEN "Quantity lesser than 2" ELSE "Quantity is lesser than 4" END AS "Quantity Check" FROM order_details;

SELECT CustomerID,Country FROM Customers ORDER BY Country DESC; #Default ORDER BY is ascending.

SELECT CustomerID,Country FROM Customers GROUP BY Country ORDER BY Country; #Groups all the countries into one entry and orders by the country.

SELECT CustomerID,Country FROM Customers GROUP BY Country HAVING count(Country) > 4 ORDER BY Country;

USE Customer;

#Creating functions. 
#Here we create concact function.
CREATE FUNCTION Full_Name(first_name CHAR(20),last_name CHAR(20))
RETURNS CHAR(55) DETERMINISTIC #Deterministic means that it will return the same function with the parameters that have been input.
RETURN CONCAT(first_name," ",last_name);

#Using the concat function that we've created.
SELECT number_of_complaints,Full_Name(first_name,last_name) AS Full_Name FROM Customers;


#Trim Function
#Inserting values with spaces into new table to trim.
CREATE TABLE RandomNames
(First_Name CHAR(20) NOT NULL PRIMARY KEY ,
Second_Name CHAR(20) NOT NULL);

INSERT INTO RandomNames
(First_Name,Second_Name)
VALUES
("Saai   "," Mahesh"),
("     Srinivasan ","Rama");

#Using trim to remove spaces in the inserted names.
SELECT First_Name,trim(First_Name) AS TrimmedNames FROM RandomNames;


#Length function
SELECT First_Name,length(First_Name) FROM RandomNames;


#CASE in SELECT (Used for setting multiple conditions within the SELECT cmd)
SELECT FirstName,LastName,TitleOfCourtesy, CASE WHEN TitleOfCourtesy = "Ms." THEN "MISSUS" WHEN TitleOfCourtesy = "Mr." THEN "MISTER" WHEN TitleOfCourtesy = "Mrs." THEN "MISTRESS" WHEN TitleOfCourtesy = "Dr." THEN "DOCTOR" END AS "Extended Titles" FROM Employees;


#Creating function for setting extended titles rather than using CASE-WHEN-THEN-END in SELECT
USE northwind;

DELIMITER //
CREATE FUNCTION Title ( TitleOfCourtesy CHAR(10 ))
RETURNS CHAR(15) DETERMINISTIC

BEGIN

   DECLARE ExtendedTitle CHAR(20);

   IF TitleOfCourtesy = "Mr." THEN
      SET ExtendedTitle = 'Mister';

   ELSEIF TitleOfCourtesy = "Mrs." THEN
      SET ExtendedTitle = 'Mistress';
      
   ELSEIF TitleOfCourtesy = "Ms." THEN
      SET ExtendedTitle = 'Missus';
      
   ELSE
      SET ExtendedTitle = 'Doctor';

   END IF;

   RETURN ExtendedTitle;

END; //

DELIMITER ;

#Using title function that we've created to get extendedtitle from the employees table.
SELECT FirstName,LastName,Title(TitleOfCourtesy) AS "ExtendedTitle" FROM Employees;
