USE northwind;
SELECT count(distinct CompanyName) AS "Number of companies" FROM Shippers; #Retrives the count of distinct company names and name it as 'number of companies' from the table 'Shippers'.

SELECT AVG(UnitPrice) AS "Average Unit Price" FROM Products;

SELECT SUM(UnitPrice) AS "Sum of Unit Price" FROM Products;

SELECT MIN(UnitPrice) AS "Min" FROM Products;

SELECT MAX(UnitPrice) AS "Max", MIN(UnitPrice) AS "Min", AVG(UnitPrice) AS "Avg" FROM Products; #Multiple commands in one line.

SELECT ROUND(MAX(UnitPrice)) AS "Rounded Max Unit Price" FROM Products;

SELECT ABS(-264) AS "Absolute Value"; #Converts a given number to absolute value.

SELECT UnitPrice,Discontinued,ROUND(UnitPrice-Discontinued) FROM Products;

USE Customer;
SELECT first_name,last_name,concat(first_name," ",last_name) AS "Full Name" FROM Customers;
