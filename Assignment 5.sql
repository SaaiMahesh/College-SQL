CREATE DATABASE Student;
USE Student;

CREATE TABLE Student
(id INT(4) PRIMARY KEY,
name CHAR(10),
dob date,
sex CHAR(1),
class CHAR(2),
hcode CHAR(1),
dcode CHAR(3),
mtest INT(2));

INSERT INTO Student
VALUES
(1001,"ABA","86-04-11",	"M",	"1A",	"B"	,"TST",	84),
(1002,"Mary","86-06-25","F",	"2B","B",	"YL",	82),
(1003,"David","88-03-17",	"M",	"1A",	"G",	"TM",	84),
(1004,"John","85-01-15",	"M",	"1C",	"B",	"YL",	82),
(1005,"May","86-11-15",	"F",	"1A",	"B",	"TP",	30),
(1006,"Janet","86-06-04",	"F",	"2B",	"R",	"TST",	62),
(1007,"Steve","87-03-31",	"M",	"2C",	"R",	"TM",	38),
(1008,"Chris","84-01-12",	"M",	"1A",	"B",	"YL",	49),
(1009,"Robert","87-09-03",	"M",	"1A",	"G",	"TST",	63),
(1010,"June","88-02-15",	"F",	"1B",	"R",	"YMT",	59),
(1011,"Judie","86-02-23",	"F",	"2C",	"R",	"TST",	62),
(1012,"Sally","86-07-05",	"F",	"3A",	"G",	"YL",	71),
(1013,"Sammi","86-08-14",	"F",	"1B",	"B",	"TM",	84),
(1014,"katie","86-09-22",	"F",	"1C",	"B",	"YMT",	42),
(1015,"Wilson","86-10-12",	"M",	"1A",	"R",	"YL",	66),
(1016,"Tommy","86-12-05",	"M",	"1A",	"G",	"TM",	33),
(1017,"Till","86-04-14","M",	"2B",	"R",	"TP",81);


#Q1-A List all 2A students
SELECT name FROM Student WHERE class = "2A";

#Q1-B List the names and math test scores of the 1B Boys
SELECT name,mtest FROM Student WHERE class = "1B";

#Q2-A List the classes,names of students whose names contain the letter 'e' as the third letter
SELECT class,name FROM Student WHERE name LIKE '__e%';

#Q2-B List the classes,names of students whose name start with 'T' and do not contain 'Y'
SELECT class,name FROM Student WHERE name LIKE 't%' AND name NOT LIKE '%y%';

#Q2-C List the names of 1A students whose Math test score is not 51, 61, 71, 81, or 91.
SELECT name FROM Student WHERE class = "1A" AND mtest NOT IN (51,61,71,81,91);

#Q2-D List the students who were born between 22 March 1986 and 21 April 1986
SELECT name,dob FROM Student WHERE dob BETWEEN 86-03-22 AND 86-04-21;

#Q3-A  Find the number of girls living in TST
SELECT COUNT(*) AS "Number of girls living in TST" FROM Student WHERE sex = "F" AND dcode = "TST";

#Q3-B List the number of pass in the Math test of each class. (passing mark = 50)
SELECT name,mtest FROM Student WHERE mtest >= 50;

#Q3-C List the number of girls grouped by each class
SELECT name,class,COUNT(*) AS "Count" FROM Student WHERE sex = "F" GROUP BY class;

#Q3-D List the number of girls grouped by the year of birth
SELECT YEAR(dob),COUNT(*) as "Count" FROM Student WHERE sex = "F" GROUP BY "dob";

#Q3-E Find the average age of Form 1 boys. 
SELECT AVG((DATE()-dob)/365) FROM Student WHERE sex = "M" AND Class LIKE "1_";

#Q4-A Find the average mark of mtest for each class
SELECT class,AVG(mtest) FROM Student GROUP BY Class;

#Q4-B Find the maximum mark of mtest for each sex. 
SELECT sex,MAX(mtest) FROM Student GROUP BY sex;

#Q4-C Find the average mark of mtest for all students
SELECT AVG(mtest) FROM Student;

#Q5-A List the students who are common members of the Physics Club and the Chemistry Club. 
SELECT * FROM phy WHERE id IN (SELECT id FROM chem);

#Q5-B List the students who are common members of the Chemistry Club and Biology Club but not of  the Physics Club. 
SELECT * FROM chem WHERE id IN (SELECT id from bio) AND id NOT IN (SELECT id from phy);

CREATE TABLE Client
(Part_No INT,
Descript CHAR(20),
Qty INT,
Supplier CHAR(20));

INSERT INTO Client
VALUES
(209,"Axle Pin",190,"MRF India"),
(213,	"Axle Rod",	200,	"US GoodYear"),
(231,	"Rim Covers",	7,	"MRF India"),
(234,	"Shaft Coat",	42,	"China Metals Co."),
(345,	"Piston Rubber",	23,	"India Reliance"),
(635,	"Shaft Plug",	9,	"China Metals Co."),
(654,	"Tyre Rubber",	40,	"US GoodYear"),
(868,	"Shaft Rod",	24	,"China Metals Co."),
(879,	"Piston Electric Plug",	13,"India Electronics Co");

#Q6-A Produce a list of parts in ascending order of quantity. 
SELECT Part_No,Qty FROM Client ORDER BY Qty ASC;

#Q6-B Produce a list of parts that consist of the keyword ‘Shaft’ in the description.
SELECT Descript,Part_No FROM Client WHERE Descript LIKE '%shaft%';

#Q6-C Produce a list of parts that have a quantity more than 20 and are supplied by ‘China Metals Co.’ 
SELECT Supplier,Part_No,Qty FROM Client WHERE Qty > 20 AND Supplier = "China Metals Co.";

#Q6-D List all the suppliers without duplication.
SELECT DISTINCT Supplier FROM Client;

#Q6-E Increase the quantity by 10 for those parts with quantity less than 10.
UPDATE Client SET Qty = Qty + 10 WHERE Qty < 10;
SELECT * FROM CLIENT;

#Q6-F Delete records with part_no equal to 879, 654, 231 and 234.
DELETE FROM Client WHERE Part_No IN (879,654,231,234);

#Q6-G Add a field “Date_purchase” to record the date of purchase. 
ALTER TABLE Client
ADD Date_Purchase DATE;




