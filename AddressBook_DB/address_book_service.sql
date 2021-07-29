#UC1-Creates Data base
create database address_book_service;
show databases; 
use address_book_service;
Select database();

#UC2-creates a Table
create table address_book (
first_name varchar(31) not null,
last_name varchar(31) not null,
address varchar(150) not null,
city varchar(31) not null,
state varchar(31) not null,
zip int not null,
phone_number long not null,
email varchar(50) not null
);
select * from address_book;
drop table address_book; #To delete the table

#UC3-Add data to Table of database
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) values
('Balu','Pinisetty','Gunupudi','Bhimavaram','Andhra',534201,8885404285,'balupinisetty@gmail.com'),
('Mani','Kanta','Gandhinagar','Hyderabad','Telangana',500082,9493213357,'manikanta@gmail.com'),
('Abhishek','Prathi','Gokul','Vegas','Canada',634258,9121522521,'prathiabhishek@gmail.com'),
('Naga','Bhuvan','DNR','Bhimavaram','Andhra',534204,8330911935,'nagabhuvan@gmail.com'),
('Vaishnavi','Papa','Beach','Mumbai','Maharastra',852214,9876543210,'vaishnavipapa@gmail.com'),
('Nithin','Krishna','Gawaski','Banagalore','Karnataka',725489,9139191921,'nagasai@gmail.com');
select * from address_book;

#UC4-To edit existing details of Contact
update address_book set address='Gokley' where first_name='Abhishek';
select * from address_book;

#UC5-To delete a contact using name
delete from address_book where first_name='Abhishek';
select * from address_book;

#UC6-To retrieve contacts belongs to city or state
select * from  address_book where city='Bhimavaram' or state='Telangana';

#UC7-To get Size of book by city and state
select state, count(first_name) from address_book group by state; #Count by state
select city, count(first_name) from address_book group by city; #Count by city

#UC8-To sort the contacts for given city
select * from address_book where city="Bhimavaram" order by first_name asc;

#UC9-To Identify each Book with Name and Type
alter table address_book add type varchar(31);
select * from address_book;
update address_book set type='FAMILY' where first_name='Vaishnavi' or first_name='Naga';
update address_book set type='FRIEND' where first_name='Balu' or first_name='Mani';
update address_book set type='PROFESSION' where first_name='Nithin' or first_name='Abhishek';
select * from address_book;

#UC10-To get no.of contacts by type
select type, count(first_name) from address_book group by type; #Count by type

#UC11-To add person with two types
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email,type) values
('Abhishek','Prathi','Gokul','Vegas','Canada',634258,9121522521,'prathiabhishek@gmail.com','FRIEND');
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email,type) values
('Abhishek','Prathi','Gokul','Vegas','Canada',634258,9121522521,'prathiabhishek@gmail.com','FAMILY');
