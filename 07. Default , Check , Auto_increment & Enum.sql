----constraint 

defult
Check
auto_increment
enum

#CHECk Constraint
#CHECK (expression)
create database school;
use school;
create table students1 (
id int primary key,
name varchar(50),
age int,
marks int ,
constraint chk_age check (age >= 5 and age <= 25),
constraint chk_marks check (marks >=0 and marks <=100)
);

insert into students1 values(1, 'Rahul', 20 ,85);
insert into students1 values(2, 'priya' , 18 ,95);
insert into students1 values(3, 'amit', 22 , 70);
insert into students1 values(4, 'raj', 200,85);
 select * from students1;
 alter table students1 add phone_no varchar(10);
 
 alter table students1
 add constraint chk_phone check (length(phone_no) = 10);
 
 alter table students1 drop check chk_age;
 
 show create table students1;
 desc students1;
 ---- maan lo ek students table hai--------
create table students (
id int primary key,
name varchar(50), 
age int check (age >=5 and age <= 25),
marks int check (marks >= 0 and marks <=100)
);
insert into students values (2 , 'priya', 20, 95);
select * from students;

1. Employee Table
create table empolyees (
emp_id int primary key,
name varchar(50),
salary decimal(10,2) check (salary > 0),
gender varchar(1) check (gender in ('M' , 'F')),
experience int check (experience >= 0 and experience <=40)
);
select * from empolyees;

---# default 
use class1;
create table users (
id int primary key,
name varchar(50),
city varchar(50)default 'nagpur'
);

insert into users (id , name ) values (1 ,'piyush');
select * from users;

# Auto_incerment 

create table orders (
order_id int auto_increment primary key,
product varchar(50)
);
insert into orders (product) values ('mobile');
insert into orders (product) values ('laptop');
select * from orders;

# ENUM 
create table users(
name varchar (50),
gender enum ('male','female','other')
);
insert into users values ('neha', 'female');
insert into users values ('alien','male');
select * from users;

create table employee (
id int auto_increment primary key,
name varchar(50),
salary decimal(10,2) check (salary >= 10000),
city varchar(50) default 'nagpur' ,
role enum ('HR' , 'manager' , 'Developer')
);
insert into employee( name , salary , role)
value ( 'amit ' , 10000, 'Developer' );
insert into employee( name , salary , role)
value ( 'raj ' , 10000, 'HR' );
insert into employee( name , salary , role)
value ( 'piyush ' , 20000, 'manager' );
select * from employee;
insert into employee (name, salary, role)
values ('failtest', 50000, 'HR');