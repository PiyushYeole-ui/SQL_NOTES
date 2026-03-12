
CREATE DATABASE class1;
USE class1;

--------- NOT NULL -------------------
CREATE TABLE students (
name VARCHAR(50) NOT NULL
);
SHOW TABLES;
DESC TEST;

INSERT INTO students( std_id,marks )
VALUES (3 ,35);

drop table test;
create table test(
std_id int primary key,
names varchar(50) not null,
marks int
);
update test 
set marks = 150 
where std_id = 1;

select * from test;
where marks is null;

update test 
set marks = 0 
where marks is null;
INSERT INTO TEST (std_id, names, marks)
VALUES (6, 'Aman', NULL);

----------NULL VALUE CHEAK KASIE KARTE HAIN ?----------------
SELECT *
FROM TEST
WHERE marks IS NULL;

SELECT *
FROM table_name
WHERE column_name IS NULL;

-----------COUNT DEKHA HO -----------
SELECT COUNT(*)
FROM table_name
WHERE column_name IS NULL;

--------------UNIQUE -----------------------
column me duplicate vlaues allow nhi karega
SHOW CREATE TABLE test;
desc test;
INSERT INTO test (std_id, names, marks)
VALUES (10, 'ajay', NULL);

alter table test
add constraint unique_name unique (names);
SELECT names, COUNT(*)
FROM test
GROUP BY names
HAVING COUNT(*) > 1;
 
 create database users;
 use users;
 create table com (
 id int, 
 email varchar (100) unique
 );
 desc com ;
INSERT INTO com VALUES (1, 'a@gmail.com');
INSERT INTO com VALUES (2, 'a1@gmail.com');
INSERT INTO com VALUES (3, 'a@gmail.com');

INSERT INTO com VALUES (4, NULL);
INSERT INTO com VALUES (5, NULL);
INSERT INTO com VALUES (6, NULL);
INSERT INTO com VALUES (7, 'x@gmail.com');
INSERT INTO com VALUES (8, 'x@gmail.com');

ALTER TABLE com
MODIFY email VARCHAR(100) UNIQUE NOT NULL;

select * from com 
where email is null;

update com 
set email = concat('user', id, '@mail.com')
where email is null

desc com;
select * from com;
