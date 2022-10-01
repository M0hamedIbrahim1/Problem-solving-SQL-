/*

    Link : https://leetcode.com/problems/combine-two-tables
    author : Mohamed Ibrahim
    
*/

select firstName,lastName,city,state from Person P
left join Address A
on P.personId = A.personId       


