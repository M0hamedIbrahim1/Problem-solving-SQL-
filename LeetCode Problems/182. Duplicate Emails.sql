/*

    link   : https://leetcode.com/problems/duplicate-emails/description/?envType=study-plan&id=sql-i
    author : Mohamed Ibrahim
    
*/

select email from Person 
group by email 
having count(email) > 1


