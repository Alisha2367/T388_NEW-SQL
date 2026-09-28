
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

select power(2,4);
select pow(2,4);

select sqrt(196);
select *,sqrt(salary) from employee;
select concat("good"," ", "morning") as remark;

select concat(fullname, "-", department) as mail from employee;
select *, lower(fullname) as newname, upper(fullname) as CAPITALNAME from employee;
select * from employee;
alter table employee add EMAIL varchar(50);
alter table employee modify EMAIL varchar(50);
update employee set EMAIL = concat(FULLNAME, "@gmail.com");
select replace("Hello Everyone, Good Night" ,"night", "morning") as statement;
select fullname,replace(fullname,"Jones","Patil") as changed,
reverse(fullname)
from employee;
select salary, length(fullname) from employee;
select substring("Maharashtra",5,3); 

select NAME , length(name) as actual_length,
ltrim(name) as leftrim, length(ltrim(name)) as ltrim_length,
rtrim(name) as rightTrim, length(rtrim(name)) as RTRIM_lenght from trim;
SELECT *  FROM TRIM;

select NAME , length(name) as actual_length,
ltrim(name) as leftrim, length(ltrim(name)) as ltrim_length,
rtrim(name) as rightTrim, length(rtrim(name)) as RTRIM_lenght,
trim(name) as both_side_trim, length(rtrim(name)) as all_trim_length from trim;

-- sub queries
select * from employee;
select age from employee where employeeid = 1002;
select age from employee where fullname = "mary smith";

select * from employee where salary = (select salary from employee  where fullname = "John Doe");
select * from employee where Department = ( select department from employee where fullname = "John Doe");
select max(salary) from employee;
-- to show 2 highest salary
select  max(salary) from employee where salary <(select max(salary) from employee);
-- to show 3 highest salary 
select max(salary) from employee 
where salary < (select max(salary)from employee where salary <(select max(salary)from employee));


-- multiple row subquery 
select * from employee;
select age from employee where employeeid in(1002,1003);

select * from employee
where age in (select age from employee where employeeid in(1002,1003));

use t388;
select distinct salary from employee;

select * from employee where
salary >=any (select salary from employee where employeeid between 1001 and 1003);

select * from employee where
salary <any (select salary from employee where employeeid between 1001 and 1003);

select * from employee where
saname_t388lary > all (select salary from employee where employeeid between 1001 and 1003);

select * from employee where
salary < all (select salary from employee where employeeid between 1001 and 1003);

-- join subquery
Use t388;
-- inner join
select salary_t388.id, name , salary from name_t388 
join 
salary_t388
on salary_t388.id = name_t388.id;
-- left join
 select salary_t388.id , name , salary from salary_t388 left join name_t388 on salary_t388.id = name_t388.id;
 select name_t388.id, name , salary from name_t388 left join salary_t388 on name_t388.id = salary_t388.id;
 -- right join
  select salary_t388.id , name , salary from salary_t388 right join name_t388 on salary_t388.id = name_t388.id;
 select name_t388.id, name , salary from name_t388 right join salary_t388 on name_t388.id = salary_t388.id;
 
 -- outer join 
 select n.ID as Name_ID, s.ID as salary_ID, name , salary 
 from name_t388 as n 
 left join
 salary_t388 as s 
 on s.ID = n.ID 
 union
 select n.ID as Name_ID, s.ID as salary_ID, name , salary 
 from name_t388 as n 
 right join 
 salary_t388 AS s
 on s.ID = n.ID;
 
