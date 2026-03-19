create database class1;
use class1;

# inner join-------------------------------------
CREATE TABLE students (
students_id INT PRIMARY KEY,
name VARCHAR(50)
);

create table marks (
students_id int,
name varchar(50)
);
select * from marks;
create table marks(
students_id int,
marks int,
foreign key (students_id) references students (students_id)
);

insert into students values
(1,'Rahul'),
(2,'Pooja'),
(3,'Amit');
insert into marks values
(1,85),
(2,90);

select students.students_id, students.name, marks.name
from students
inner join marks
on students.students_id = marks.students_id;
---------inner join query-----
create table customer (
customer_id int primary key ,
name varchar (50),
dept_id int
);

create table departments (
dept_id int primary key ,
dept_name varchar(50)
);
 insert into customer values
 ( 1, 'Amit' ,101),
 ( 2, 'pooja' ,102),
 ( 3, 'raj' ,103 );

insert into departments values
(101, 'sales'),
(102,'HR'),
(104, 'IT');

select customer.name, departments.dept_name
from customer
inner join departments
on customer.dept_id = departments.dept_id
-----------------------------------
create table customers (
customer_id int primary key,
customer_name varchar(50)
);
create table orders (
    order_id int primary key ,
    customer_id int ,
    product varchar(50),
    foreign key (customer_id) references customer (customer_id)
);
insert into customers values
(1,'Amit'),
(2,'Pooja'),
(3,'Raj');
insert into orders values
(101,1,'Laptop', 5000),
(102,2,'Mobile', 2000),
(103,1,'Mouse',3000);
select * from customers;
select * from orders;
select customer.name, orders.product
from customer
inner join orders
on customer.customer_id = orders.customer_id;
----------------------------------------------
# left join
create table students (
students_id int primary key,
name varchar(50)
);
insert into students values 
(1,'rahul'),
(2,'amit'),
(3,'neha');
select * from students;

create table marks(
students_id int,
subject varchar(50)
);
insert into marks values
(1, 'math'),
(2,'art');
select * from marks;

#LEFT JOIN query
	select  s.students_id, s.name, m.subject
	from students s
	left join marks m
	on s.students_id = m.students_id;
# LEFT JOIN + NULL 
select s.students_id,s.name
from students s
left join marks m
on s.students_id = m.students_id
where m.students_id is null;

select * 
from students s
left join marks m
on s.students_id = m.students_id;

select s.students_id, s.name
from students s 
left join marks m 
on s.students_id = m.students_id 
where m .students_id is null;

# Right join 
create table customers (
id int primary key,
name varchar(50)
);
insert into customers ( id , name) values
(1, 'A'),
(2, 'B'),
(3, 'C');
select * from customers;
create table orders (
order_id int primary key,
customer_id int 
);
insert into orders (order_id , customer_id ) values
(1, 1),
(2, 1),
(3, 2),
(4, 4);
select * from orders;
# rigth join qurey
select c.name , o.order_id
from customers c 
right join orders o
on c.id = o.customer_id;
