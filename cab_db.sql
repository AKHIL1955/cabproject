-- create database cab;
-- use cab;
create table user (
id int primary key auto_increment,
Name varchar(150) not null,
email varchar(100) not null,
mobile int not null,
password varchar(100)
); 
create table cab (
cab_no int primary key auto_increment,
cab_Name varchar(150) not null,
cab_type varchar(100) not null,
cab_seat_total int not null
);
create table bookedticket(
ticket_no int primary key,
origin varchar(150) not null,
destination varchar(150) not null,
booking_date date,
cab_time time,
user_id int,
cab_number int,
constraint fk_booking_passengerid foreign key(user_id) references user(id),
constraint fk_booking_cabno foreign key(cab_number) references cab(cab_no));




