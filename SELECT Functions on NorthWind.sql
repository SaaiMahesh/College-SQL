#Example excercises
USE Northwind;
SELECT DAYNAME(RequiredDate) FROM orders; #Find day name of the requireddate from orders table.
SELECT ROUND(DATEDIFF(curdate(),BirthDate / 365.25)) FROM orders; #Finding the age of employeees from table.

SELECT FirstName,Country FROM Employees WHERE City LIKE 'L%'; #Finds any match that starts with 'L' as city (Say for ex, L for London).

SELECT DISTINCT FirstName,City FROM Employees WHERE FirstName IN ("Anne","Laura","Robert") OR City = "London"; #Either get results from city = London or names being Anne,Laura and Robert. Distinct shows unique values.

USE Customer;
SELECT First_Name,Last_Name FROM Customers WHERE Email_Address LIKE 'a%'; #Finds the first name and last name from email address starting with 'a'.

use northwind;
#1 
SELECT ProductName,QuantityPerUnit FROM northwind.products;

#2
SELECT ProductID,ProductName FROM northwind.products;

#3
SELECT Discountinued,ProductID,ProductName FROM northwind.products;

#4
SELECT Max(UnitPrice) FROM northwind.products;
SELECT ProductName,UnitPrice FROM northwind.products WHERE UnitPrice = 263.50;
SELECT Min(UnitPrice) FROM northwind.products;
SELECT ProductName,UnitPrice FROM northwind.products WHERE UnitPrice = 7.75;

#5
SELECT ProductID,ProductName,UnitPrice FROM northwind.products WHERE UnitPrice > 20;

#6
SELECT ProductID,ProductName,UnitPrice FROM northwind.products WHERE UnitPrice BETWEEN 15 and 25;

#7
SELECT AVG(UnitPrice) FROM northwind.products;
SELECT ProductName,UnitPrice FROM northwind.products WHERE UnitPrice > 48.36;

#8
SELECT ProductName,UnitPrice FROM northwind.products ORDER BY UnitPrice DESC LIMIT 10;

