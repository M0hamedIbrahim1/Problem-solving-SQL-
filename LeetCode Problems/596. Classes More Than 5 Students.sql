/*
    link   : https://leetcode.com/problems/classes-more-than-5-students/description/
    author : Mohamed Ibrahim
*/

select class from Courses 
group by class 
having count(student) > 4



