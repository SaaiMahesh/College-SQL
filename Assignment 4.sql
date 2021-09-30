USE northwind;

#Q1. OutOfStockProducts: Make a list of products that are out of stock
SELECT ProductName,UnitsInStock FROM products WHERE UnitsInStock <= 0;

#Q2. OutOfStockProductsNotDiscontinued: Make a list of products that are out of stock and have not been discontinued. Include the suppliers’ names. 
SELECT S.CompanyName,S.SupplierID,P.ProductName,P.UnitsInStock,P.Discontinued FROM products P JOIN suppliers S ON  P.SupplierID = S.SupplierID WHERE UnitsInStock <= 0 AND Discontinued = 0;

#Q3. ReorderProducts: Make a list of products that need to be re-ordered i.e. where the units in stock and the units on order is less than the reorder level. 
SELECT ProductName,UnitsInStock,UnitsOnOrder FROM Products WHERE UnitsInStock < ReorderLevel AND UnitsOnOrder < ReorderLevel;

#Q4. ProductPopularity: Make a list of products and the number of orders in which the product appears.  Put the most frequently ordered item at the top of the list and so on to the least frequently ordered item.
SELECT P.ProductName,P.ProductID,O.OrderID,O.Quantity FROM Products P LEFT JOIN Order_Details O ON P.ProductID=O.ProductID ORDER BY Quantity DESC;

#Q5. ProductPopularity2: Make a list of products and total up the number of actual items ordered.  Put the most frequently ordered item at the top of the list and so on to the least frequently ordered item
SELECT P.ProductName,P.ProductID,O.Quantity FROM Products P LEFT JOIN Order_Details O ON P.ProductID=O.ProductID GROUP BY Quantity 
HAVING SUM(Quantity) ORDER BY Quantity DESC;

#Q6. CategorySuppliers: Make a list of categories and suppliers who supply products within those categories.
SELECT P.CategoryID,P.ProductName,P.SupplierID,S.CompanyName FROM Products P LEFT JOIN Suppliers S ON P.SupplierID=S.SupplierID;

#Q7. CustomerOrders: Make a complete list of customers, the OrderID and date of any orders they have made. Include customers who have not placed any orders
SELECT C.CustomerID,C.ContactName,C.ContactName,C.ContactTitle,C.Address,C.City,C.Region,C.PostalCode,OS.OrderID,OS.OrderDate 
FROM Customers C LEFT JOIN Orders OS ON C.CustomerID = OS.CustomerID;

#Q8. CustomerNumberOfOrders: Make a complete list of customers along with the number of orders they have placed.
SELECT C.CustomerID,C.ContactName,C.ContactName,C.ContactTitle,C.Address,C.City,C.Region,C.PostalCode,OS.OrderID,O.Quantity 
FROM Order_Details O LEFT JOIN Orders OS ON O.OrderID = OS.OrderID RIGHT JOIN Customers C ON C.CustomerID = OS.CustomerID;

#Q9. CustomerWithMaxNumberOfOrders: Create a query that determines the customer who has placed the maximum number of orders.
SELECT C.CustomerID,C.CustomerID,O.Quantity FROM Order_Details O LEFT JOIN Orders OS ON O.OrderID = OS.OrderID 
RIGHT JOIN Customers C ON C.CustomerID = OS.CustomerID HAVING MAX(Quantity);


