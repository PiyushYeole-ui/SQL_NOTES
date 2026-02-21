create database collage;
use collage;
CREATE TABLE students (
id INT PRIMARY KEY ,
name VARCHAR(50),
age INT 
);
drop database information_schema;
drop database students;
CREATE TABLE collage.students (
id INT PRIMARY KEY,
name VARCHAR (50),
age INT 
);
drop database collage ;
alter table students
add departments varchar(30);

truncate table students;

select * from students

show databases ;
create database class1;
use class1;
show tables;
create table students (id int ,`name` varchar(10) ) ;
select * from students ;
describe students;
insert into students ( id , name  )
values (1 ,'Rahul');

alter table students 
add column age int;

insert into students 
values ( 2,'vijay', 2)

update students
set age = 25 where id = 2 ;











































































































































































































































