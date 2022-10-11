/*

    link   : https://leetcode.com/problems/department-top-three-salaries/description/
    author : Mohamed Ibrahim
    
*/

select d.name as Department , e.name as Employee , e.salary as salary 
from Employee e
join Department as d
on e.departmentId = d.id
where 3 > 
    (   
         select count(distinct e2.salary) from Employee e2 
         where e2.salary > e.salary and e.departmentId = e2.departmentId
    )
    
