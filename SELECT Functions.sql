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
SELECT first_name,last_name,concat(first_name," ",last_name) AS "Full Name" FROM Customers; #Concatenating names

#Time functions using SELECT
SELECT CURTIME(); SELECT CURRENT_TIME();#Either command returns current time.

SELECT CURRENT_DATE(); SELECT CURDATE(); #Either command returns current date.

SELECT CURRENT_TIMESTAMP(); #Returns current date and time.

SELECT DAY(CURDATE()); #Returns the number of day of the current month.

SELECT DAYNAME(CURDATE()); #Returns the current day.

SELECT DAYOFWEEK(CURDATE()); #Returns the number of day in the current week.

SELECT DAYOFMONTH(CURDATE()); #Returns the number of day in the current month.

SELECT DAYOFYEAR(CURDATE()); #Returns the number of day in the current year.

SELECT EXTRACT(MONTH FROM CURDATE()); #Returns the number of month in the current year.

SELECT str_to_date("August 10 2021","%M %d %Y"); #Returns the string of date specified into date format.

SELECT ADDDATE("2021-09-15 09:34:21",interval 10 minute);#Returns the specified time after 10 minute interval.

SELECT ADDDATE("2021-09-15 09:34:21",interval 1 hour);#Returns the specified time after 1hour interval.

SELECT ADDTIME("2021-09-15 09:34:21.000001","5 2:10:5.000003"); #Returns the specified time after 5 days, 2 hours and 10 minutes, and 5.00003 seconds.

SELECT DATEDIFF("2021-09-08","2020-09-08");#Returns the number of days between the specified dates using DATEDIFF function.

#Practical example: 
SELECT OrderDate,ShippedDate,datediff(ShippedDate,OrderDate) AS "Difference" FROM Orders; #Difference of days for ShippedDate and OrderDate.

