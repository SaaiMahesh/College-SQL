#Q1 Which shippers do we have?
SELECT CompanyName FROM Shippers;

#Q2 In category table we only want to see category name and description?
SELECT CategoryName,Description FROM Categories;

#Q3 We would like to see just the first name,last name and hire date of all the employees with the title of sales rep
SELECT FirstName,LastName,HireDate FROM employees WHERE Title = 'Sales Representative';

#Q4 Now we would like to see the same columns as above but not only Employees that have both the title of Sales Representative and also are in the United States
SELECT FirstName,LastName,HireDate FROM employees WHERE Title = 'Sales Representative' AND Country = 'USA';

#Q5 Show all the orders placed by a specific company. The employee_id is 5
SELECT OrderID,EmployeeID FROM orders WHERE EmployeeID = 5;

#Q6 In the suppliers table show the SupplierID, ContactName and ContactTitle for those suppliers whose contact title is not marketing manager
SELECT SupplierID,ContactName,ContactTitle FROM suppliers WHERE ContactTitle != 'Marketing Manager';

#Q7 In the product table, we'd like to see the ProductID and ProductName for those products where the product name includes the string 'queso'?
SELECT ProductID,ProductName FROM products WHERE ProductName LIKE '%queso%';

#Q8 Write a query that shows OrderID,CustomerID and SHIP Country from the orders table where the ship country is either France or Belgium
SELECT OrderID,CustomerID,ShipCountry FROM orders WHERE ShipCountry = 'France' OR ShipCountry ='Belgium';



