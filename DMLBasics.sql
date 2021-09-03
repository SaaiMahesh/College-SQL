#Example 1
USE Employee;
INSERT INTO Employee
(EmpID,ID,EmpName,Designation,Department,Joining_Date)
VALUES
(1,2,'Saai','Manager','Analytics',current_date());

#Example 2
USE customer;
INSERT INTO Customers
(customer_id,first_name,last_name,email_address,number_of_complaints)
VALUES
(200729,'Ajay','Gatla','ajay.gatla@gmail.com',5),
(200730,'Ramesh','Ambati','ramesh.ambati@gmail.com',4),
(200731,'Amrutha','Nayak','amrutha.nayak@gmail.com',3),
(200732,'Valar','Singh','valar.singh@gmail.com',4),
(200733,'Rajesh','Reddy','rajesh.reddy@gmail.com',2),
(200734,'Vinutha','Pawar','vinutha.pawar@gmail.com',2),
(200735,'Somashekhar','Rao','somashekhar.rao@gmail.com',1),
(200736,'Janardhan','Gowda','janardhan.gowda@gmail.com',3),
(200737,'Bei','Li','bei.li@gmail.com',4),
(200738,'Vijay','Kumar','vijay.kumar@gmail.com',1);

INSERT INTO Companies
(company_id,company_name,headquarters_phone_number)
VALUES
(1192,'Unisys',86777290),
(1293,'Dell',76890123),
(1394,'IBM',67002956),
(1495,'Enseza',57115789),
(1596,'Northern trust',47228622),
(1697,'Walmart',37341455),
(1798,'Infosys',27454288),
(1899,'Wipro',17567121),
(2000,'Southpal',7679954),
(2101,'Sony',2207213);

INSERT INTO Items
(item_code,item,unit_price,company_id)
VALUES
(10,'Computer',22000,1192),
(11,'Laptop',35000,1293),
(12,'Mouse',100,1394),
(13,'CPU',10000,1495),
(14,'Screen',8000,1596),
(15,'Keyboard',2000,1697),
(16,'Table',10501,1798),
(17,'Chair',6383,1899),
(18,'Operating',7092,2000),
(19,'Antivirus',1112,2101);


INSERT INTO Sales
(purchase_number,date_of_purchase,customer_id,item_code)
VALUES
(2345,'2018-01-01',200729,10),
(5490,'2019-03-07',200730,11),
(4892,'2020-01-01',200731,12),
(7888,'2019-07-14',200732,13),
(8888,'2019-09-17',200733,14),
(9999,'2019-11-21',200734,15),
(1010,'2020-01-15',200735,16),
(1111,'2019-03-30',200736,17),
(2222,'2019-06-03',200737,18),
(4673,'2019-08-06',200738,19);
