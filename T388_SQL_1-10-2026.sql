use t388;
SELECT Department, sum(salary), avg(salary) from employee group by department;
select *,
row_number() over (partition by department) as rankindepartment
from employee;
select fullname , department, row_number() over (partition by department) as rank_indepartment 
from employee order by salary asc;

-- LAG 
SELECT 
employeeID,
FULLNAME,
DEPARTMENT,
AGE,
SALARY,
LAG(SALARY,1 ,0) OVER (order by SALARY) AS Previousemployeesalarybyage
from
employee
order by
salary;

select 
employeeid,
fullname,
department, 
salary,
avg(salary) over (partition by Department) as departmentavgsalary,
sum(salary) over (partition by Department) as departmenttotalsalary
from
employee
WHERE GENDER ="FEMALE"
order by 
department, salary DESC;

select 
employeeid,
fullname,
department, 
salary,
row_number() over (partition by department) as rankindepartment
from employee;






select *,
row_number() over (partition by department) as rankindepartment
from employee;

select fullname , department, row_number() over (partition by department) as rank_indepartment 
from employee order by salary asc;

select fullname , salary , rank() over (order by Salary) as rank_indepartment 
from employee ;
select 
employeeid,
fullname,
department, 
salary,
sum(salary) over (partition by department) as rankindepartment
from employee;
