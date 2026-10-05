-- self join
create database self_T388;
use self_T388;
select * from employee_manager_T388;
select
E.Emp_id,
E.Emp_name as employee,
M.Emp_name as manager
from
employee_manager_T388 as E
left join 
employee_manager_T388 as M
on M.Emp_id = E.manager_id;


-- CROSS JOIN
select * from chest_team_a;
select * from chest_team_b;
select id, team_b_id, a.name , b.name
from
chest_team_a as A
cross join
chest_team_b as B;

-- VIEW & CTE

CREATE VIEW T388_VIEW1 AS
select id, team_b_id, a.name as name_a , b.name as name_b
from
chest_team_a as A
cross join
chest_team_b as B;
select database();
select * from T388_VIEW1;

-- CTE 
with T388_CTE AS (SELECT ID , TEAM_B_ID, A.NAME AS name_a, b.name as name_b
from
chest_team_a as A
cross join
chest_team_b as B)
SELECT * FROM T388_CTE;