CREATE DATABASE items_customers_database;
USE items_customers_database;

CREATE TABLE items_ordered
(customerid INT NOT NULL,
order_date VARCHAR(15),
item VARCHAR(20),
quantity INT,
price INT);

INSERT INTO items_ordered
VALUES
(10101,"30-Jun-99","Raft"	,1, 58),
(10101,	"01-Jul-99",	"Life Vest",	4	,125),
(10101,	"18-Aug-99",	"Rain Coat",	1	,18.3),
(10101,	"30-Dec-99",	"Hoola Hoop",	3	,14.75),
(10101,	"02-Jan-00",	"Lantern",	1	,16),
(10101,	"08-Mar-00",	"Sleeping Bag",	2,	88.7),
(10298,	"01-Jul-99",	"Skateboard",	1,	33),
(10298,	"19-Sep-99",	"Lantern",	2,	29),
(10298,	"01-Dec-99",	"Helmet",	1	,22),
(10298,	"18-Mar-00",	"Pocket Knife",	1,	22.38),
(10298,	"01-Apr-00",	"Ear Muffs",	1	,12.5),
(10299,	"06-Jul-99",	"Parachute",	1	,1250),
(10299,	"18-Jan-00",	"Inflatable Mattress",	1	,38),
(10315,	"02-Feb-00",	"Compass",	1,	8),
(10330,	"30-Jun-99",	"Pogo stick",	1,	28),
(10330,	"01-Jan-00",	"Flashlight",	4,	28),
(10330,	"19-Apr-00",	"Shovel",	1	,16.75),
(10339,	"27-Jul-99",	"Umbrella",	1	,4.5),
(10410,	"28-Oct-99",	"Sleeping Bag",	1,	89.22),
(10410,	"30-Jan-00",	"Unicycle",	1,	192.5),
(10413,	"19-Jan-00",	"Lawnchair",	4,	32),
(10438,	"01-Nov-99",	"Umbrella",	1,	6.75),
(10438,	"02-Nov-99",	"Pillow",	1	,8.5),
(10438,	"18-Jan-00",	"Tent",	1	,79.99),
(10439,	"14-Aug-99",	"Ski Poles",	2,	25.5),
(10439,	"18-Sep-99",	"Tent",	1	,88),
(10449,	"13-Aug-99",	"Unicycl",1	,180.79),
(10449,	"01-Sep-99",	"Snow Shoes",	1,	45),
(10449,	"15-Dec-99",	"Bicycle",	1,	380.5),
(10449,	"22-Dec-99",	"Canoe",	1	,280),
(10449,	"29-Feb-00",	"Flashlight",	1	,4.5),
(10449,	"19-Mar-00",	"Canoe paddle",	2,	40);

CREATE TABLE Customers
(customerid INT,
firstname VARCHAR(20),
lastname VARCHAR(20),
city VARCHAR(20),
state VARCHAR(20));

INSERT INTO Customers
VALUES
(10101,	"John",	"Gray"	,"Lynden",	"Washington"),
(10298,	"Leroy",	"Brown"	,"Pinetop",	"Arizona"),
(10299,	"Elroy",	"Keller"	,"Snoqualmie",	"Washington"),
(10315,	"Lisa"	,"Jones"	,"Oshkosh",	"Wisconsin"),
(10325,	"Ginger",	"Schultz"	,"Pocatello",	"Idaho"),
(10329,	"Kelly",	"Mendoza"	,"Kailua",	"Hawaii"),
(10330,	"Shawn",	"Dalton"	,"Cannon Beach",	"Oregon"),
(10338,	"Michael",	"Howell"	,"Tillamook",	"Oregon"),
(10339,	"Anthony",	"Sanchez"	,"Winslow",	"Arizona"),
(10408,	"Elroy"	,"Cleaver"	,"Globe"	,"Arizona"),
(10410,	"Mary Ann",	"Howell"	,"Charleston",	"South Carolina"),
(10413,	"Donald"	,"Davids"	,"Gila Bend","Arizona"),
(10419,	"Linda"	,"Sakahara",	"Nogales"	,"Arizona"),
(10429,	"Sarah"	,"Graham"	,"Greensboro"	,"North Carolina"),
(10438,	"Kevin"	,"Smith"	,"Durango	","Colorado"),
(10439,	"Conrad"	,"Giles"	,"Telluride"	,"Colorado"),
(10449,	"Isabela"	,"Moore",	"Yuma","Arizona");

#Comparison Operators
#Q1. From the items_ordered table, select a list of all the items purchased for customerid 10449. Display the customerid,item and price for this customer.
SELECT customerid,item,price FROM items_ordered WHERE customerid = 10449;

#Q2. Select all columns from the items_ordered table for whoever purchased a Tent.
SELECT * FROM items_ordered WHERE item = 'Tent';

#Q3. Select the customerid,order_date and item values from the items_ordered table for any items in the item column that start with letter 'S'
SELECT item,customerid,order_date,price FROM items_ordered WHERE item LIKE "s%";

#Q4. Select the distinct items in the items_ordered table. In other words, display a listing of each of each of the unique items from the items_ordered table.
SELECT DISTINCT item AS "List of distinct items" FROM items_ordered;

#Aggregate functions
#Q1. Select the maximum price of any item ordered in the items_ordered table. Hint: Select the max price only
SELECT MAX(Price),item AS "Max Price" FROM items_ordered;

#Q2. Select the average price of all of the items ordered that were purchased
SELECT AVG(Price) AS "Avg Price" FROM items_ordered;

#Q3. What are the total number of rows in the items_ordered table?
SELECT COUNT(*) AS "Total number of rows" FROM items_ordered;

#Q4. For all the tents that were ordered in the items_ordered table, what is the price of the lowest tent? Hint: Query should return price only
SELECT MIN(Price) AS "Min Price of Tent" FROM items_ordered WHERE item = 'Tent';

#GROUP BY Clause
#Q1. How many people are in each unique state in the customers table? Select the state and display.
SELECT COUNT(customerid), State FROM Customers GROUP BY State;

#Q2. From the items_ordered table, select the item,max price and min price for each specific item in the table. Hint: The items will need to be broken up into seperate group
SELECT item, MAX(Price) AS "Max Price", MIN(Price) AS "Min Price" FROM items_ordered GROUP BY item;

#Q3. How many orders did each customer make? Use the items_ordered table. Select the customerid,number of orders they made, sum of their orders.
SELECT customerid,item,quantity FROM items_ordered GROUP BY customerid;

#HAVING Clause
#Q1. How many people are in each unique state in the customers table that have more than one person in the state? Select the state and display the number of how mna
SELECT COUNT(customerid) AS 'Customer ID', State FROM Customers GROUP BY State HAVING COUNT(State) > 1;

#Q2. From the items_ordered table, select the item, max price and min price for each specific item in the table. Only display results if max price is > 190 for one of the items.
SELECT item,MAX(Price) AS "Max Price" ,MIN(Price) AS "Min Price" FROM items_ordered GROUP BY item HAVING MAX(Price) > 190.00;

#Q3. How many orders did each customer make? Use the items_ordered table. Select the customerid, number of orders they made and the sum of their orders if they purchased more than 1 item.
SELECT customerid,item,COUNT(quantity) AS "Quantity" FROM items_ordered  GROUP BY customerid HAVING COUNT(quantity) > 1;


#ORDER BY Clause
#Q1. Select the lastname,firstname, and city for all customers in the customers table. Display the results in ascending order based on the lastname
SELECT lastname,firstname,city FROM Customers ORDER BY lastname ASC;

#Q2. Select the lastname,firstname, and city for all customers in the customers table. Display the results in descending order based on the lastname
SELECT lastname,firstname,city FROM Customers ORDER BY lastname DESC;

#Q3. Select the item and price for all of the items in items_ordered table that the price is greater than 10.00. Display the results in ascending order based on the price
SELECT item,price FROM items_ordered WHERE price > 10 ORDER BY price ASC;

#Combining conditions and boolean operators
#Q1. Selecth the customerid,order_date and item from the items_ordered for all the items unless they are 'Snow Shoes' or if they are 'Ear Muffs'. Display the row as long as they are not of these items.
SELECT customerid,order_date,item FROM items_ordered WHERE item != 'Snow Shoes' AND item != 'Ear Muffs';

#Q2. Select the item and price for all items that start with 'S', 'P' or 'F'
SELECT item,price FROM items_ordered WHERE item LIKE 'S%' OR item LIKE 'P%' OR item LIKE '%F';

#IN & Between
#Q1. Select the date,item, price from items_ordered table for all of the rows that have a price value ranging from 10.00 to 80.00
SELECT order_date,item,price FROM items_ordered WHERE price BETWEEN 10.00 AND 80.00;

#Q2. Select the first name, city and state from the customers table for all of the rows where the state value is either Arizona,Washington,Oklahoma, Colorado or Hawaii
SELECT firstname,city,state from Customers WHERE state IN ('Arizona','Washington','Oklahoma','Colorado','Hawaii');

#Mathematical Functions
#Q1. Select the item and per unit price for each item in the items_ordered table. Hint: Divide the price by the quantity
SELECT item,SUM(price)/SUM(quantity) AS 'Unit Price' FROM items_ordered GROUP BY item;

#Table Joins
#Q1. Write a query using a join to determine which items were ordered by each of the customers in customers table. Select the customerid,firstname,lastname,order_date,item and price for everything each customer purchased in the items_ordered table.
SELECT C.customerid,C.firstname,C.lastname,I.order_date,I.item,I.price FROM items_ordered I JOIN Customers C ON I.customerid = C.customerid;

#Q2. Write a query using a join to determine which items were ordered by each of the customers in customers table. Select the customerid,firstname,lastname,order_date,item and price for everything each customer purchased in the items_ordered table. Display results sorted by state in descending order.
SELECT C.customerid,C.firstname,C.State,C.lastname,I.order_date,I.item,I.price FROM items_ordered I JOIN Customers C ON I.customerid = C.customerid ORDER BY State DESC;

