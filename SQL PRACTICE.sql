select 3*4 as multiplication;

select 13/4 as Quotient;

select 34!=67 as Compare;
select database();
-- Logical operators 
select not false;

select 3>5;
use T388;
select database();
show databases;


CREATE TABLE Employee (
  EmployeeId INT PRIMARY KEY,
  FullName VARCHAR(45) NOT NULL,
  Department VARCHAR(45) NOT NULL,
  Salary float NOT NULL,
  Gender VARCHAR(45) NOT NULL,
  Age INT NOT NULL
);

select * from Employee;

insert into employee values
(2005,"alisha","IT",45000,"Female",20);
delete from employee;
