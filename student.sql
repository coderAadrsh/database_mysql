create database  student;
use student;
create table information(
student_id int primary key,
name varchar(30),
course varchar(40),
phoneNo int
);
insert into information
(student_id,name,course,phoneNo)
values
(101,"adarsh","B.tech",73172256),
(102,"naveen","B.tech",73172256),
(103,"akul","B.tech",73172256);
