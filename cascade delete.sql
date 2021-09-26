create database cascade_practice;
use cascade_practice;
create table buildings (
building_no int primary key auto_increment,
building_name varchar(250) not null,
address varchar(255) not null);

create table rooms(
room_no int primary key auto_increment,
room_name varchar(255) not null,
building_no int not null,
foreign key (building_no) references buildings (building_no) on delete cascade);

insert into rooms (room_name,building_no)
values
('room204' , 1),
('room205', 2);

insert into buildings (building_name,address)
values
('A1' , 'address1'),
('A2', 'address2');

use cascade_practice;

delete from buildings where building_no=2; /*Deletes successfully even the foreign key constraints*/
use northwind;
delete from products where SupplierID=1; /*throws error*/

