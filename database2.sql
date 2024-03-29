create database book_store;
use book_store;


create table `account`(
acc_name varchar(255) primary key,
acc_pass varchar(255),
acc_role bit
);


create table customer(
cus_id int primary key auto_increment,
cus_name varchar(255),
cus_email varchar(255),
cus_date_of_birth date,
cus_gendle bit,
acc_name varchar(255),
foreign key(acc_name) references `account`(acc_name)
);


create table book_type(
book_type_id int primary key auto_increment,
book_type_name varchar(255)
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


create table order_book(
order_id int primary key auto_increment,
order_date date,
book_id int,
cus_id int,
foreign key(book_id) references books(book_id),
foreign key(cus_id) references customer(cus_id)
);

insert into `account`(acc_name, acc_pass, acc_role)
value('admin','admin',1),
('vanminh','vanminhpro',0),
('vankhai','vankhai123',0),
('quocanh','quocanh123',0),
('nhuqunh','nhuquynh123',0),
('vanchinh','vanchinh123',0),
('minhlanh','minhlanh123',0),
('hoanghai','hoanghai123',0);
