CREATE DATABASE StudentManagement;
USE StudentManagement;

CREATE TABLE Parent
(parent_id INT PRIMARY KEY,
email VARCHAR(45),
fname VARCHAR(45),
lname VARCHAR(45),
phone VARCHAR(15));

CREATE TABLE Student
(student_id INT PRIMARY KEY,
email VARCHAR(45),
fname VARCHAR(45),
lname VARCHAR(45),
dob DATE,
classyear YEAR NOT NULL,
mobileno VARCHAR(15),
parent_id INT NOT NULL,
doj DATE,
alumni BOOL,
FOREIGN KEY (parent_id) REFERENCES Parent(parent_id));

CREATE TABLE Faculty
(faculty_id INT PRIMARY KEY,
email VARCHAR(45),
fname VARCHAR(45),
lname VARCHAR(45),
department VARCHAR(25),
classyear YEAR NOT NULL,
title VARCHAR(10),
designation VARCHAR(45),
mobile VARCHAR(15));

CREATE TABLE Classroom
(class_id INT PRIMARY KEY,
classyear YEAR NOT NULL,
faculty_id INT NOT NULL,
student_id INT NOT NULL,
department VARCHAR(25),
courename VARCHAR(45),
course_id INT NOT NULL,
classstatus BOOL,
FOREIGN KEY (student_id) REFERENCES Student(student_id),
FOREIGN KEY(course_id) REFERENCES Course(course_id),
FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id));

CREATE TABLE Attendence
(date DATE,
student_id INT NOT NULL,
classyear YEAR NOT NULL,
remark TEXT,
FOREIGN KEY (student_id) REFERENCES Student(student_id));

CREATE TABLE Course
(course_id INT PRIMARY KEY,
coursename VARCHAR(45),
coursedesc TEXT,
classyear YEAR NOT NULL);

CREATE TABLE Marks
(exam_id INT PRIMARY KEY,
examname VARCHAR(45),
class_id INT NOT NULL,
classyear YEAR NOT NULL,
course_id INT NOT NULL,
coursename VARCHAR(45),
student_id INT NOT NULL,
studentname VARCHAR(45),
marks INT NOT NULL,
faculty_id INT NOT NULL,
facultyname VARCHAR(45),
remarks TEXT,
FOREIGN KEY (class_id) REFERENCES Classroom(class_id),
FOREIGN KEY (course_id) REFERENCES Course(course_id),
FOREIGN KEY (student_id) REFERENCES Student(student_id),
FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id));

INSERT INTO Parent
VALUES
(1,"anand21@gmail.com","Anand","Kumar",9789024692),
(2,"jaisri@gmail.com","Sri","Jai",9789024699),
(3,"yamini@gmail.com","Yamini","Prasad",8289024692),
(4,"anandita@gmail.com","Anandita","Yadav",9799024692),
(5,"gurugovind@gmail.com","Guru","Govind",9789028952),
(6,"shantanu@gmail.com","Shantanu","Paul",9780024692),
(7,"asharma@gmail.com","Anshitha","Sharma",9788024699),
(8,"khariwalmuskan@gmail.com","Muskan","Khariwal",8289454692),
(9,"harshverma@gmail.com","Harsh","Verma",9789557634),
(10,"rohitnarang@gmail.com","Rohit","Narang",87356698027),
(11,"asthanaraj@gmail.com","Raj","Asthana",6156735547),
(12,"akshay@gmail.com","Akshay","Marmat",9835778645),
(13,"jisha@gmail.com","Jisha","K",8736745986),
(14,"sharmapooja@gmail.com","Pooja","Bhatt",8566678990),
(15,"mahesh@gmail.com","Mahesh","Chaterjee",9845521147),
(16,"sharma1@gmail.com","Sharma","Shrinivasan",9835221156),
(17,"prabir@gmail.com","Prabir","Paul",6345985567),
(18,"harman@gmail.com","Harman","Jinder",8211657021),
(19,"arshiya@gmail.com","Arshiya","Chaudhary",9166686555),
(20,"aryansharma@gmail.com","Aryan","Kumar",9982173645);

INSERT INTO Student
VALUES
(20201,"saaimahesh12@gmail.com","Saai","Mahesh",'1998-06-29','2020',9789841408,1,'2020-01-01',0),
(20202,"abhishekbansal@gmail.com","Abhishek","Bansal",'1998-07-23','2020',8302735977,1,'2020-01-21',0),
(20203,"akshat@gmail.com","Akshat","Pahwa",'1997-09-06','2020',9986756898,1,'2020-01-06',0),
(20204,"geetika@gmail.com","Geetika","Nahra",'1998-09-25','2020',9746889001,1,'2020-01-18',0),
(20205,"anchal12@gmail.com","Anchal","Garg",'1998-06-23','2020',6578992467,1,'2020-01-08',0),
(20206,"inderdeep@gmail.com","Inderdeep","Dahiya",'1997-11-23','2020',9845667892,1,'2020-01-11',0),
(20207,"kanishkjin21@gmail.com","Kanishk","Jinjha",'1998-04-13','2020',8725776534,1,'2020-01-17',0),
(20208,"surana12@gmail.com","Subham","Surana",'1998-09-20','2020',9836445789,1,'2020-01-23',0),
(20209,"keshavmittal@gmail.com","Keshav","Mittal",'1996-06-19','2020',8356895778,1,'2020-01-26',0),
(20210,"anilkripa@gmail.com","Kripa","Anil",'1998-04-23','2020',9827756091,1,'2020-01-30',0),
(20211,"muskaancha34@gmail.com","Muskaan","Chabbra",'1998-03-19','2020',97898568825,1,'2020-01-07',0),
(20212,"arushisingh@gmail.com","Arushi","Singh",'1998-09-29','2020',9155587665,1,'2020-01-19',0),
(20213,"timsi@gmail.com","Timsi","Baladia",'1998-12-22','2020',8902645977,1,'2020-01-06',0),
(20214,"shivangibansal@gmail.com","Shivangi","Bansal",'1997-03-12','2020',8736579920,1,'2020-01-03',0),
(20215,"godaraastha@gmail.com","Astha","Godara",'1998-09-14','2020',9238746908,1,'2020-01-04',0),
(20216,"deepakgolyan@gmail.com","Deepak","Golyan",'1998-04-13','2020',9984670128,1,'2020-01-20',0),
(20217,"manankhileri@gmail.com","Manan","Khileri",'2000-05-06','2020',9909237765,1,'2020-01-14',0),
(20218,"renikagarg@gmail.com","Renika","Garg",'1999-11-29','2020',91287456798,1,'2020-01-31',0),
(20219,"zeniasapra12@gmail.com","Zenia","Sapra",'1999-06-09','2020',9835698882,1,'2020-01-09',0),
(20220,"arorakamil5@gmail.com","Kamil","Arora",'1997-07-13','2020',9983567985,1,'2020-01-05',0);

INSERT INTO Attendence
VALUES
('2020-02-01',20201,'2020','Present'),
('2020-02-01',20202,'2020','Absent'),
('2020-02-01',20203,'2020','Present'),
('2020-02-01',20204,'2020','Absent'),
('2020-02-01',20205,'2020','Present'),
('2020-02-01',20206,'2020','Present'),
('2020-02-01',20207,'2020','Absent'),
('2020-02-01',20208,'2020','Present'),
('2020-02-01',20209,'2020','Present'),
('2020-02-01',20210,'2020','Absent'),
('2020-02-01',20211,'2020','Absent'),
('2020-02-01',20212,'2020','Present'),
('2020-02-01',20213,'2020','Present'),
('2020-02-01',20214,'2020','Present'),
('2020-02-01',20215,'2020','Absent'),
('2020-02-01',20216,'2020','Present'),
('2020-02-01',20217,'2020','Present'),
('2020-02-01',20218,'2020','Absent'),
('2020-02-01',20219,'2020','Present'),
('2020-02-01',20220,'2020','Absent');

INSERT INTO Faculty
VALUES
(20001,"ramesh@college.com","Ramesh","Subraman","EEE","2020","Dr.","Associate Professor",8745032985),
(20002,"suresh@college.com","Suresh","Kumar","EEE","2020","Dr.","Associate Professor",8555032984),
(20003,"prakash@college.com","Prakash","Roy","EEE","2020","Dr.","Senior Professor",8255032983),
(20004,"rajiv@college.com","Rajiv","Reddy","ECE","2020","Mr.","Research Assistant",8745462985),
(20005,"aman@college.com","Aman","Khan","CSE","2020","Dr.","Assistant Professor",8745292981),
(20006,"rahman@college.com","Rahman","Mohammed","EEE","2020","Mr.","Associate Professor",8545032985),
(20007,"yuvaraj@college.com","Yuvaraj","Singaria","CSE","2020","Dr.","Associate Professor",9745032982),
(20008,"ahmed@college.com","Ahmed","Haq","CSE","2020","Dr.","Associate Professor",9545032985),
(20009,"kamal@college.com","Kamal","Posalini","CSE","2020","Dr.","Senior Professor",8645032983),
(20010,"rakesh@college.com","Rakesh","Surya","CSE","2020","Mr.","Research Assistant",9245032972),
(20011,"babu@college.com","Babu","Chowdary","EEE","2020","Dr.","Assistant Professor",7655032989),
(20012,"abdullah@college.com","Abdullah","Ali","ECE","2020","Dr.","Associate Professor",8745292986),
(20013,"srihari@college.com","Sri","Hari","ECE","2020","Dr.","Associate Professor",8945039643),
(20014,"naga@college.com","Naga","Subramanya","CSE","2020","Dr.","Senior Professor",8650403597),
(20015,"mohit@college.com","Mohit","Paul","EEE","2020","Dr.","Assistant Professor",9983059367),
(20016,"yash@college.com","Yash","Chowdary","CSE","2020","Dr.","Associate Professor",9839605934),
(20017,"pawan@college.com","Pawan","Reddy","CSE","2020","Mr.","Research Assistant",9384035968),
(20018,"praveen@college.com","Praveen","Chettinad","ECE","2020","Dr.","Associate Professor",8396031673),
(20019,"anjali@college.com","Anjali","Mishra","Mech","2020","Dr.","Senior Professor",9898245078),
(20020,"ananya@college.com","Ananya","Sharma","Mech","2020","Dr.","Associate Professor",9992515076);

INSERT INTO Course
VALUES
(101,"Electrical Systems","Electrical systems and management of distributed electrical grids",'2020'),
(102,"Computer Systems","Basics of computer systems",'2020'),
(103,"Network Architecture","Foundations and principles of networking and architecture types",'2020'),
(104,"Building & Resource Management","Resource planning and building management principles",'2020'),
(105,"Foundations of Networking","Networking basics and internet networks",'2020'),
(106,"Electrical System Innovation","Advancement in electrical systems for commercial and industrial applications",'2020'),
(107,"Analog Electronics","Analog electrical systems and appliances",'2020'),
(108,"Circuit Systems","Basics of circuit analysis and cycle of circuit development",'2020'),
(109,"Power Systems","Power systems for industrial and commercial activities",'2020'),
(110,"Microcontrollers","Embedded system applications using microcontrollers",'2020'),
(111,"Power Electronics","Electronics using power source from AC/DC and their functioning",'2020'),
(112,"Transmission & Distribution","Development of mechnical components for transmission and distribution systems",'2020'),
(113,"Blockchain Technology","Blockchain technologies and principles of blockchain",'2020'),
(114,"Computer Programming","Programming of computer languages such as Python,C,C++",'2020'),
(115,"Electrical System Programming","Programming electrical systems for specific activities",'2020'),
(116,"Artificial Intelligence","Natural Language Processing, Robotics, Automation and AI Techologies",'2020'),
(117,"Image Processing","Processing of digital images and techniques to enchance images",'2020'),
(118,"Advanced Control Systems","Control systems to manage electrical circuits",'2020'),
(119,"Energy Engineering Circuits","Engineering principles of energy based systems",'2020'),
(120,"Digital Signal Processing","SONAR, RADAR and other related digital signal processing techniques",'2020');


INSERT INTO Classroom
VALUES
(202001,'2020',20001,20201,'EEE',"Electrical Systems",101,1),
(202002,'2020',20002,20202,'CSE',"Computer Systems",101,1),
(202003,'2020',20003,20203,'CSE',"Network Architecture",101,1),
(202004,'2020',20004,20204,'Mech',"Building & Resource Management",101,1),
(202005,'2020',20005,20205,'CSE',"Foundations of Networking",101,1),
(202006,'2020',20006,20206,'EEE',"Electrical System Innovation",101,0),
(202007,'2020',20007,20207,'EEE',"Analog Electronics",101,0),
(202008,'2020',20008,20208,'EEE',"Circuit Systems",101,0),
(202009,'2020',20009,20209,'EEE',"Power Systems",101,1),
(202010,'2020',20010,20210,'EEE',"Microcontrollers",101,0),
(202011,'2020',20011,20211,'EEE',"Power Electronics",101,1),
(202012,'2020',20012,20212,'Mech',"Transmission & Distribution",101,1),
(202013,'2020',20013,20213,'CSE',"Blockchain Technology",101,0),
(202014,'2020',20014,20214,'EEE',"Electrical System Programming",101,1),
(202015,'2020',20015,20215,'CSE',"Artificial Intelligence",101,1),
(202016,'2020',20016,20216,'CSE',"Image Processing",101,0),
(202017,'2020',20017,20217,'EEE',"Advanced Control Systems",101,1),
(202018,'2020',20018,20218,'CSE',"Electrical Systems",101,1),
(202019,'2020',20019,20219,'EEE',"Energy Engineering Circuits",101,0),
(202020,'2020',20020,20220,'EEE',"Digital Signal Processing",101,1);

INSERT INTO Marks
VALUES
(1,"Electrical Systems Term End",202001,'2020',101,"Electrical Systems",20201,"Saai Mahesh",92,20001,"Ramesh","Pass"),
(2,"Computer Systems Term End",202002,'2020',102,"Computer Systems",20201,"Saai Mahesh",68,20005,"Aman","Pass"),
(3,"Network Architecture Term End",202003,'2020',103,"Network Architecture",20203,"Abhishek Bansal",86,20005,"Aman","Pass"),
(4,"Network Architecture Term End",202003,'2020',103,"Network Architecture ",20203,"Abhishek Bansal",62,20005,"Aman","Pass"),
(5,"Building & Resource Management Term End",202004,'2020',104,"Building & Resource Management",20205,"Anchal Garg",75,20019,"Anjali","Pass"),
(6,"Foundations of Networking Term End",202005,'2020',105,"Foundations of Networking",20205,"Anchal Garg",83,20005,"Aman","Fail");
