-- Day 03 - 2026-07-27
-- Topics: Aggregate functions, Math functions, String functions,
--         IDENTITY + UNIQUE constraints, simple login table, WHERE with AND/OR/!=

use employe_db

select * from dbo.employe_info

select sum(empSalary) from dbo.employe_info

select avg(empSalary) from dbo.employe_info

select max(empSalary) from dbo.employe_info

select min(empSalary) from dbo.employe_info

select count(empName) from dbo.employe_info


select abs(-10)

select CEILING(76.10)

select FLOOR(76.90)

select SIGN(0),SIGN(10),SIGN(-10)

select SQUARE(5),SQRT(5),PI(),cos(30),SIN(90),TAN(45)

select exp(0)



select LEN('parth')

select empName,LEN(empName) from dbo.employe_info

select empName,upper(empName) from dbo.employe_info

select empName, LOWER(empName) from dbo.employe_info

select LTRIM('       parth')

select RTRIM('parth        ')

select SUBSTRING('sejani parth',8,11)

select REPLACE('parth','th','TH')

select REPLICATE('Noob ',5)



create table tbl_user_login
(
	UserId int primary key Identity,
	UserName varchar(50) not null unique,
	email varchar(50) not null unique,
	password varchar(50) not null 
	);

insert into dbo.tbl_user_login (UserName,email,password) values
('parth','sejaniparth5@gmail.com','parth$2005'),
('vasu','vasusejani@gmail.com','vasu@2004'),
('manan','manansejani32@gmail.com','manan#2002'),
('uttam','uttamsejani@gmail.com','uttam!2001');

select * from dbo.tbl_user_login

select UserName from dbo.tbl_user_login
where email = 'sejaniparth5@gmail.com' AND password = 'parth$2005'

select * from dbo.tbl_user_login
where email = 'sejaniparth5@gmail.com' or UserName = 'parth92005'

select * from dbo.tbl_user_login
where UserName != 'parth'




