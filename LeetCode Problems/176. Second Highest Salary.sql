/*

    link   : https://leetcode.com/problems/second-highest-salary/description/
    author : Mohamed Ibrahim

*/

select IFNULL(
   (select salary from Employee
    group by salary
    order by salary desc
    limit 1,1
   )
,NULL) as SecondHighestSalary 



