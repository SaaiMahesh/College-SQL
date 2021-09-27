USE northwind;

#1
SELECT ProductID,ProductName,UnitsInStock FROM Products WHERE UnitsInStock <= 0;

#2
SELECT ProductID,ProductName,UnitsInStock,Discontinued FROM Products WHERE UnitsInStock <= 0 AND Discontinued > 0;

#3
SELECT ProductID,ProductName,UnitsInStock,UnitsOnOrder,ReorderLevel FROM Products WHERE UnitsInStock < ReorderLevel AND UnitsOnOrder < ReorderLevel;

#4 
SELECT P.ProductName,P.ProductID,O.OrderID,O.Quantity FROM Products P LEFT JOIN Order_Details O ON P.ProductID=O.ProductID ORDER BY Quantity DESC;

#5
SELECT P.ProductName,P.ProductID,O.Quantity FROM Products P LEFT JOIN Order_Details O ON P.ProductID=O.ProductID GROUP BY Quantity 
HAVING SUM(Quantity) ORDER BY Quantity DESC;

#6:
SELECT P.CategoryID,P.ProductName,P.SupplierID,S.CompanyName FROM Products P LEFT JOIN Suppliers S ON P.SupplierID=S.SupplierID;

#7
SELECT C.CustomerID,C.ContactName,C.ContactName,C.ContactTitle,C.Address,C.City,C.Region,C.PostalCode,OS.OrderID,OS.OrderDate 
FROM Customers C LEFT JOIN Orders OS ON C.CustomerID = OS.CustomerID;

#8
SELECT C.CustomerID,C.ContactName,C.ContactName,C.ContactTitle,C.Address,C.City,C.Region,C.PostalCode,OS.OrderID,O.Quantity 
FROM Order_Details O LEFT JOIN Orders OS ON O.OrderID = OS.OrderID RIGHT JOIN Customers C ON C.CustomerID = OS.CustomerID;

#9
SELECT C.CustomerID,C.CustomerID,O.Quantity FROM Order_Details O LEFT JOIN Orders OS ON O.OrderID = OS.OrderID 
RIGHT JOIN Customers C ON C.CustomerID = OS.CustomerID HAVING MAX(Quantity);


