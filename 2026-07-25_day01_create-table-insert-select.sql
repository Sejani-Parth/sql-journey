-- Day 01 - 2026-07-25
-- Topics: CREATE DATABASE, CREATE TABLE, PRIMARY KEY, INSERT, SELECT

CREATE DATABASE employe_db;

USE employe_db;

create table employe_info
(
	empId integer primary key,
	empName varchar(20) not null,
	empSalary decimal(10,2) not null,
	job varchar(30),
	phone varchar(50),
	deptid integer not null
	);

create table department_info
(
	deptid integer not null,
	deptname varchar(40) not null,
	deptlocation varchar(100)
);

select * from department_info;
select * from employe_info;


insert into dbo.employe_info values 
(1,'Parth',20000,'python','8401486820',7);

insert into dbo.employe_info (empId,empName,empSalary,deptid) values
(2,'vasu',50000,7);

select empid,empName,deptid from dbo.employe_info
select * from dbo.employe_info;
