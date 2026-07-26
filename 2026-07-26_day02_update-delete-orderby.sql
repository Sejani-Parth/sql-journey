-- Day 02 - 2026-07-26
-- Topics: UPDATE, DELETE, WHERE, ORDER BY

use employe_db


select * from dbo.employe_info

update dbo.employe_info 
set empSalary = empSalary + 2000

update dbo.employe_info 
set job = 'tester'
where empName = 'vasu'

select * from dbo.employe_info

update dbo.employe_info
set phone = '9909691557'
where empId = 2;

select * from dbo.employe_info;

update dbo.employe_info 
set deptid = 10
where empId = 2

select * from dbo.employe_info;

delete from dbo.employe_info
where deptid = 10;

select * from dbo.employe_info

delete from dbo.employe_info

insert into dbo.employe_info values
(
	1,'Parth',10000,'Python','9989898986',7
),
(
	2,'Meet',15000,'Php','9989843286',10
),
(
	3,'Jemin',30000,'java','9989898943',17
),
(
	4,'Krish',70000,'manager','9089898986',7
),
(
	5,'Miher',5000,'hr','9989898926',3
);

select * from dbo.employe_info order by empSalary desc

select empName from dbo.employe_info order by empName desc

select * from dbo.employe_info

select * from employe_info where deptid =10
