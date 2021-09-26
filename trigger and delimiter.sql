create database new;
use new;
create table buildings
( bul_no int primary key auto_increment,
bui_name varchar(255) not null,
address varchar(255) not null);

create table rooms
( room_no int primary key auto_increment,
 room_name varchar(25) not null,
 bul_no int not null,
 foreign key(bul_no) references buildings(bul_no));

 
 
 insert into buildings (bul_no,bui_name,address) values (222,"3333 north",'ffff');
 
 insert into rooms (room_no,room_name,bul_no) values ('22',"sss",222);
 
 delete from buildings where bul_no=222;
 
 /*Trigger*/
 
 use customer;
 create table history_companies
 (company_id int,
 company_name varchar(50),
 headquater_phonenumber int);
 
 select * from companies;
 /* Steps to create delimiter*/
 
 delimiter $$
 create trigger HISTORY
 after update on companies
 for each row
 Begin
 insert into history_companies
 (company_id,company_name,headquater_phonenumber)
 values(old.company_id,old.company_name,old.headquater_phone_number);
 end $$
 delimiter ;
 
 
 
 
 
 
 