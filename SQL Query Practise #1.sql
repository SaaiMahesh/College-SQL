#Q1. Create a Data base market_star_schema
CREATE DATABASE market_star_schema;
USE market_star_schema;

#Q2. Create Table shipping_mode_dimen
#1.	Mode_of_Shipping with data type as a character type, 
#2.Vehicle_name with data type as a character type and 
#3. Toll_Required which accepts either true or false, i.e., a Boolean type
CREATE TABLE shipping_mode_dimen
(mode_of_shipping CHAR(50),
vehicle_name CHAR(50),
toll_required boolean);

#Q3. Alter Table - Make Mode_of_Shipping  as Primary Key
ALTER TABLE shipping_mode_dimen
ADD PRIMARY KEY(mode_of_shipping);

#Q4. Drop table shipping_mode_dimen and recreate the table this time put the primary key while creating the Table
DROP TABLE shipping_mode_dimen;
CREATE TABLE shipping_mode_dimen
(mode_of_shipping CHAR(50) PRIMARY KEY,
vehicle_name CHAR(50),
toll_required boolean);

#Q5. Insert the following in to the table
#Mode_of_Shipping 	Vehicle_name 	Toll_Required 
#DELIVERY Truck	ASHOK LEYLAND	false
#REGULAR AIR	AIR AERO	false
INSERT INTO shipping_mode_dimen
(mode_of_shipping,vehicle_name,toll_required)
VALUES
('DELIVERY TRUCK','ASHOK LEYLAND',FALSE),
('REGULAR AIR','AIR AERO',FALSE);

#Q6. Update the Toll_Required for Delivery Truck  as True
UPDATE shipping_mode_dimen
SET toll_required = TRUE
WHERE mode_of_shipping = 'DELIVERY TRUCK';

#Q7. Delete the data for Vehicle name AIR AERO.
DELETE FROM shipping_mode_dimen 
WHERE vehicle_name = 'AIR AERO';

#Q8. Add a new column as vehicle_number
ALTER TABLE shipping_mode_dimen
ADD vehicle_number VARCHAR(20);

#Q9. Add vehicle number as KK-01-V1234
UPDATE shipping_mode_dimen
SET vehicle_number = 'KK-01-V1234';

#Download the database given, and answer the following questions.
#Q1. Print the entire data of all the customers.
SELECT * FROM market_star_schema.cust_dimen;

#Q2. Print all the Customer names from the table.
SELECT Customer_Name FROM market_star_schema.cust_dimen;

#Q3. Print the data for customer name as customer full name, city as Customer City and state
SELECT Customer_Name AS 'Customer Full Name', City AS 'Customer City', State AS 'Customer State' FROM Cust_Dimen;

#Q4. Print the total number of rows in the dataset.
SELECT COUNT(*) AS 'Number of rows' FROM market_star_schema.cust_dimen;

#Q5. How many customers are from West Bengal?
SELECT Customer_Name AS 'Customer Full Name' FROM Cust_Dimen WHERE State = 'West Bengal';

#Q6. The total number of customers from Bihar in each segment.
SELECT COUNT(Customer_Name) AS 'Total number of customers from Bihar' FROM Cust_Dimen WHERE State = 'Bihar';

#Q7. Printing market_fact_full table from the dataset
SELECT * FROM market_fact_full;

#Q8. Find the Total Profit by each order
SELECT Ord_id AS 'Order ID',Sales AS 'Sales',Profit AS 'Profit' FROM market_fact_full;

#Q9. Print the Order ids with Profit more than 1000
SELECT Ord_id AS 'Order IDs with profit > 1000' FROM market_fact_full WHERE Profit > 1000;

#Q10. Arrange all consumers from Coimbatore in alphabetical order.
SELECT Customer_Name FROM Cust_Dimen WHERE City = 'Coimbatore' ORDER BY Customer_Name ASC;

#Q11. Print the three most ordered products.
SELECT Prod_id, COUNT(Prod_id) AS 'Number of times ordered' FROM market_fact_full GROUP BY Prod_id ORDER BY Prod_id DESC LIMIT 3;



