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