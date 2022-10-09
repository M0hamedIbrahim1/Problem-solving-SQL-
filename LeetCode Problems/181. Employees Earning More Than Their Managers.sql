/*
    link : https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
    author : Mohamed Ibrahim    
*/

select s1.name as Employee from Employee s1
inner join Employee s2
on s1.managerId = s2.id
where s1.salary > s2.salary



