-- Day 05 - 2026-07-30
-- Topics: ALTER TABLE (add column, DEFAULT, IDENTITY, named UNIQUE constraint), UPDATE

use clone_db

select * from dbo.emp_details

ALTER table dbo.emp_details ADD age decimal
default 71

ALTER table dbo.emp_details ADD projectid integer identity
constraint Pid_key unique 

select * from dbo.emp_details

update dbo.emp_details set age = 19 where empId = 1

update dbo.emp_details set age = 17 where empId = 2

update dbo.emp_details set age = 18 where empId = 3

update dbo.emp_details set age = 15 where empId = 4

select * from dbo.emp_details
