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
delete from employee;

delete from employee where gender ="mALE";

insert into employee values

(2005,"alisha","IT",45000,"Female",20);
delete from employee;

INSERT INTO Employee values
(1001,&quot;John Doe&quot;,&quot;IT&quot;,35000,&quot;Male&quot;,25),
(1002, &#39;Mary Smith&#39;, &#39;HR&#39;, 45000, &#39;Female&#39;, 27),
(1003, &#39;James Brown&#39;, &#39;Finance&#39;, 50000, &#39;Male&#39;, 28),
(1004, &#39;Mike Walker&#39;, &#39;Finance&#39;, 50000, &#39;Male&#39;, 28),
(1005, &#39;Linda Jones&#39;, &#39;HR&#39;, 75000, &#39;Female&#39;, 26),
(1006, &#39;Anurag Mohanty&#39;, &#39;IT&#39;, 35000, &#39;Male&#39;, 25),
(1007, &#39;Priyanka Dewangan&#39;, &#39;HR&#39;, 45000, &#39;Female&#39;, 27),
(1008, &#39;Sambit Mohanty&#39;, &#39;IT&#39;, 50000, &#39;Male&#39;, 28),
(1009, &#39;Pranaya Kumar&#39;, &#39;IT&#39;, 50000, &#39;Male&#39;, 28),

INSERT INTO Employee values
(1001,&quot;John Doe&quot;,&quot;IT&quot;,35000,&quot;Male&quot;,25),
(1002, &#39;Mary Smith&#39;, &#39;HR&#39;, 45000, &#39;Female&#39;, 27),
(1003, &#39;James Brown&#39;, &#39;Finance&#39;, 50000, &#39;Male&#39;, 28),
(1004, &#39;Mike Walker&#39;, &#39;Finance&#39;, 50000, &#39;Male&#39;, 28),
(1005, &#39;Linda Jones&#39;, &#39;HR&#39;, 75000, &#39;Female&#39;, 26),
(1006, &#39;Anurag Mohanty&#39;, &#39;IT&#39;, 35000, &#39;Male&#39;, 25),
(1007, &#39;Priyanka Dewangan&#39;, &#39;HR&#39;, 45000, &#39;Female&#39;, 27),
(1008, &#39;Sambit Mohanty&#39;, &#39;IT&#39;, 50000, &#39;Male&#39;, 28),
(1009, &#39;Pranaya Kumar&#39;, &#39;IT&#39;, 50000, &#39;Male&#39;, 28),
(1010, &#39;Hina Sharma&#39;, &#39;HR&#39;, 75000, &#39;Female&#39;, 26);

(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

alter table employee
add location varchar(10);

alter table employee
add bonus float after salary;

select * from employee;

alter table employee modify fullname varchar(35);
alter table employee
add title varchar(5)first;

desc employee; -- this is for comment
describe employee;
alter table employee change column location address varchar(35);
alter table employee modify fullname varchar(35);

select * from employee;
update employee set address = "thane";

alter table employee
drop address , drop title , drop bonus;

INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

alter table employee
add location varchar(10);

alter table employee
add bonus float after salary;

alter table employee 
add title varchar(5) first;

describe employee; -- this is for comment 

describe employee;
alter table employee change column location address varchar(35);
alter table employee modify fullname varchar(35);

update employee set address = "thane";
select * from employee;
update employee set address = "dombivli"
where department = "IT";
update employee set title = "MR" where gender = "male";
update employee set title = "MRS" where gender = "Female";
update employee set bonus = salary*0.05;
select * from employee;

