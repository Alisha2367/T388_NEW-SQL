
use t388;
show tables;
select * from employee
order by fullname;
select * from employee order by age desc;
select * from employee where gender ="male" order by fullname;

-- W G H O 
-- WHERE , GROUP BY - [HAVING] , ORDER BY 

select department, count(EmployeeID) from employee group by department;
select department, count(gender)from employee group by department;
select department, sum(salary) from employee group by department;
select department, avg(salary) from employee group by department;
select department, avg(salary),sum(salary) from employee group by department;
select department, avg(salary) as avg_salary, sum(salary) as Total_salary from employee group by department;
select avg(salary) from employee;

select department,count(Department) from employee group by department;
 select department,count(gender) from employee group by department;
 select department, avg(age),count(*) from employee group by department;
 select department, avg(age),count(*) from employee group by department having avg(age) <27;
 
-- having clause (along with group by clause)

CREATE TABLE Projects (


 ProjectId INT PRIMARY KEY AUTO_INCREMENT,


   
ProjectName VARCHAR(200) NOT NULL,


 EmployeeId INT,


   
StartDate DATETIME,


   
EndDate DATETIME


);


 


INSERT INTO Projects VALUES


(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),


(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),


(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),


(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),


(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),


(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),


(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),


(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),


(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select *,datediff(enddate, startdate) as duration from projects;
select now();

select * from projects where datediff(enddate, startdate)=45;
ALTER TABLE projects add Duration int;
select * from projects;
update projects set duration = datediff(enddate,startdate);

select duration, count(*) from projects group by duration;
select duration, count(*) from projects group by duration having count(*)>=2;
select duration, count(*) from projects group by duration having count(*)>=2 limit 3;
select duration, count(*) from projects 
where duration>=20
group by duration 
having count(*)>=2
order by duration desc;

select * from employee order by employeeID desc limit 5;
select * from employee limit 3,5;
select distinct department from employee;
select distinct age from employee;
select distinct  gender from employee;
select * from projects;
select * from projects where employeeid is null;

update projects set employeeid = 1003 where projectID = 6;
select * from projects;

-- IN , BETWEEN , LIKE

SELECT * from employee WHERE employeeID in (1003, 1005, 1007);

select * from employee where employeeid = 1003
or employeeID =1005
or EmployeeId = 1007;

select * from employee where 
age in (23 , 28);

select * from employee where age in (23,28) and Department = "IT";
select * from employee where age in (23,28) and Department = "IT" and EmployeeId in (1000,1009);

select * from employee;

use t388;
select * from simple;

select * from simple where fullname like "a%";
select * from simple where fullname like "_u%";
 select * from simple where fullname like "%an%";
select * from simple where fullname like "a% ";
select * from simple where fullname like "s%t";

select avg(salary) from employee;
select sum(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;
select count(*) as total_emp,
avg(salary) as Average ,
sum(salary) as total_salary from employee;

-- math function 
select abs(6*(-7));
select (6*(-7));

select abs(datediff(startdate, enddate))
as duration from projects;

select mod(12,7);
select mod(12,3);
select ceil(33.8);
select floor(33.8);

select truncate(123456.8765432,1);
select truncate(123456.8765432,0);
select truncate(123456.8765432,-1);
