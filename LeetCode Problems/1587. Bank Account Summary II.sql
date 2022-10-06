/*

    link   : https://leetcode.com/problems/bank-account-summary-ii/description/?envType=study-plan&id=sql-i
    author : Mohamed Ibrahim

*/

select name , sum(amount) as balance  from Users U
left join Transactions T
on U.account = T.account    
group by T.account
having sum(amount) >= 10000



