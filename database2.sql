create database book_store;
use book_store;
create table customer(
cus_id int primary key auto_increment,
cus_name varchar(255),
cus_email varchar(255),
cus_date_of_birth date,
cus_gendle bit,
acc_id int,
foreign key(acc_id) references `account`(acc_id)
);

create table `account`(
acc_id int primary key auto_increment,
acc_name varchar(255),
acc_pass varchar(255),
acc_role bit
);

create table books(
book_id int primary key auto_increment,
book_name varchar(255),
book_price double,
book_author varchar(255),
publishing_company varchar(255),
publisher varchar(255),
translator varchar(255),
describes text,
image text,
book_type_id int,
foreign key(book_type_id) references book_type(book_type_id)
);

create table book_type(
book_type_id int primary key auto_increment,
book_type_name varchar(255)
);

create table order_book(
order_id int primary key auto_increment,
order_date date,
book_id int,
cus_id int,
foreign key(book_id) references books(book_id),
foreign key(cus_id) references customer(cus_id)
);



