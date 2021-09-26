#Deleting data from table
DELETE FROM <tablename> WHERE <condition> = <conditionvalue>

#Altering data in the previously created employee database.
USE employee;
ALTER TABLE employee
ADD leaving_date varchar(50);

ALTER TABLE employee #Adding a new primary key to the table.
ADD PRIMARY KEY(leaving);

ALTER TABLE employee
MODIFY COLUMN leaving_date DATETIME;

ALTER TABLE employee
CHANGE leaving_date leaving DATETIME;

ALTER TABLE employee
DROP COLUMN leaving;

#Using the auto increment function for a new database.
CREATE DATABASE person;
USE person;
CREATE TABLE persons
(personid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
personname VARCHAR(20));

INSERT INTO persons
(personname)
VALUES
('Saai');

ALTER TABLE persons 
auto_increment = 100; #Increasing the next personid to 100 by altering it.
#set@@auto_increment = 5. Now it adds on 5 to every auto increment i.e 105, 205 etc.

INSERT INTO persons
(personname)
VALUES
('Mahesh');

TRUNCATE TABLE persons; #Removes all the data from the table but still retains the blank table whereas, DROP removes the table entirely.

#Practise Excercises
#Q1. Add a column to customer table, name the column 'follow_up_now' (integer)
USE Customer;
ALTER TABLE Customers
ADD follow_up_now INT;

#Q2. Modify the data type of column 'follow_up_now' to NULL VARCHAR(10)
ALTER TABLE Customers
MODIFY COLUMN follow_up_now VARCHAR(10) NULL;

#Q3. Change the column name of 'follow_up_now' to 'Follow_Up'
ALTER TABLE Customers
CHANGE follow_up_now Follow_Up VARCHAR(10) NULL;

#Q4. Using UPDATE, enter data into follow up, if number of complains are greater than 3 then 'YES', if lesser than or equal to then 'NO'.
UPDATE Customers
SET Follow_Up = 
CASE
WHEN number_of_complaints > 3 THEN 'YES'
ELSE 'NO'
END;

#Q5. Change the last name of Vinutha from Pawar to Chavan
UPDATE Customers
SET last_name = 'Chavan'
WHERE customer_id = 200734;
