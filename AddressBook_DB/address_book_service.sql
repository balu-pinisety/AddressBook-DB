#UC1-Creates Data base
create database address_book_service;
show databases; 
use address_book_service;
Select database();

#UC2-creates a Table
create table address_book_service (
first_name varchar(31) not null,
last_name varchar(31) not null,
address varchar(150) not null,
city varchar(31) not null,
state varchar(31) not null,
zip int not null,
phone_number int not null,
email varchar(50) not null
);
select * from address_book_service;
#drop table address_book_service; #To delete the table