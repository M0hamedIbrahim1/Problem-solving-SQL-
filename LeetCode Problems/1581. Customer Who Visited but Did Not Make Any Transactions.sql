/*

    Link : https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions 
    author : Mohamed Ibrahim
    
*/


select customer_id,count(*) count_no_trans
from Visits v
left join Transactions t on t.visit_id=v.visit_id
where t.visit_id is null
group by customer_id


