/*
    link   : https://leetcode.com/problems/fix-names-in-a-table/?envType=study-plan&id=sql-i
    author : Mohamed Ibrahim
*/


select user_id,CONCAT(upper(left(name,1)) ,right(lower(name),len(name)-1)) as name  
from Users
order by user_id
