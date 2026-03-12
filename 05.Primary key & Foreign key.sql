create database company;
use company;
create table employees (
emp_id int primary key,
name varchar(50),
salary int
);
desc employees;
insert into employees values (1,'rahul', 5000 );
insert into employees values (2, 'amit', not null);

insert into employees ( emp_id , name , email , salary ,joining_data)
values ( 1 , 'rahul','rahual89b@gmail.com' , 5000, '2023-01-10' );
SELECT * FROM employees;
drop tables employees;

Kaha Use Hoti Hai?
✅ 1. Har Main Table Me
Jitni bhi real-world entity tables hoti hain:
employees
customers
orders

In sab me primary key compulsory honi chahiye
employees → emp_id
customers → customer_id
products → product_id
orders → order_id
---------------------------------------------------------------------------------------------
foreign key

create table departments (
dept_id int primary key,
dept_name varchar(50)
);
 
 create table employees (
 emp_id int primary key ,
 name varchar(50),
 dept_id int,
 foreign key (dept_id) references departments (dept_id)
 );
 
 insert into departments values (101,'HR');
 insert into employees values (1, 'Rahul', 101);
 desc table departments;
 desc table employees;
 
 create table departments1 (
 dept_id int primary key,
 dept_name varchar(50)
 );
 create table employees1 (
 emp_id int primary key,
 name varchar(50),
 dept_id int,
 foreign key (dept_id) references departments1(dept_id)
 );
 
 insert into departments1 values (102,'HR');
 insert into departments1 values (103,'IT');
 insert into departments1 values (106, 'Finance');
 
insert into employees1 values (1,'Rahul' ,102);
insert into employees1 values (2,'Amit',102);
insert into employees1 values (3,'Amit',103);
insert into employees1 values (5,'Raj' ,106);

select employees1.emp_id,
employees1.name,
departments1.dept_name
from employees1
join departments1
on employees1.dept_id = departments1.dept_id;

 SELECT * FROM departments1;
 select * from employees1;
------------------ ON DELETE CASECADE---------------------------------
select * from employees1;
delete from employees1
where dept_id = 103;

delete from  departments1
where dept_id = 103;

