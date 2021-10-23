#Q1 Write a query to get product name and quantity/unit
SELECT ProductName,QuantityPerUnit FROM northwind.products;

#Q2 Write a query to get current product list (Product ID and name)
SELECT ProductID,ProductName FROM northwind.products;

#Q3 Write a query to get discontinued product list (Product ID and name)
SELECT Discountinued,ProductID,ProductName FROM northwind.products;

#Q4 Write a query to get most expensive and least expensive product list (name and unit price)
SELECT ProductName,UnitPrice,Max(UnitPrice) FROM northwind.products; #Max Price

SELECT ProductName,UnitPrice,Min(UnitPrice) FROM northwind.products; #Min Price

#Q5 Write a query to get product list (id,name,unit price) where current products cost less than $20
SELECT ProductID,ProductName,UnitPrice FROM northwind.products WHERE UnitPrice < 20;

#6 Write a query to get product list (id,name,unit price) where products costs between $15 and $25
SELECT ProductID,ProductName,UnitPrice FROM northwind.products WHERE UnitPrice BETWEEN 15 and 25;

#Q7 Write a query to get product list (name,unit price) of above average price
SELECT AVG(UnitPrice) FROM northwind.products;
SELECT ProductName,UnitPrice FROM northwind.products WHERE UnitPrice > 48.36;


#Q8 Write a query to get product list (name,unit price) of ten most expensive products
SELECT ProductName,UnitPrice FROM northwind.products ORDER BY UnitPrice DESC LIMIT 10;
