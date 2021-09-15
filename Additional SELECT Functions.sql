USE customer;
SELECT first_name, SUBSTRING(first_name,2,3) AS ExtractString FROM customers; #Gets the 2nd character from the first name and continues till the 3rd character from the 2nd character.

USE northwind;
SELECT OrderID,Quantity, CASE WHEN Quantity > 1 THEN "Quantity is greater than 1" WHEN Quantity < 2 THEN "Quantity lesser than 2" ELSE "Quantity is lesser than 4" END AS "Quantity Check" FROM order_details;

SELECT FirstName,LastName,TitleOfCourtesy, CASE WHEN TitleOfCourtesy = "Ms." THEN "MISSUS" WHEN TitleOfCourtesy = "Mr." THEN "MISTER" WHEN TitleOfCourtesy = "Mrs." THEN "MISTRESS" WHEN TitleOfCourtesy = "Dr." THEN "DOCTOR" END AS "Extended Titles" FROM Employees;

SELECT CustomerID,Country FROM Customers ORDER BY Country DESC; #Default ORDER BY is ascending.

SELECT CustomerID,Country FROM Customers GROUP BY Country ORDER BY Country; #Groups all the countries into one entry and orders by the country.

SELECT CustomerID,Country FROM Customers GROUP BY Country HAVING count(Country) > 4 ORDER BY Country;

#IMP: Flow of logic is SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY.