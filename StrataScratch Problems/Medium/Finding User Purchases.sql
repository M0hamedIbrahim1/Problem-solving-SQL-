/*

    link   : https://platform.stratascratch.com/coding/10322-finding-user-purchases?tabname=question
    author : Mohamed Ibrahim

*/


select distinct a_t1.user_id
from 
    amazon_transactions a_t1
join     
    amazon_transactions a_t2
on a_t1.user_id = a_t2.user_id
and a_t1.id <> a_t2.id
and a_t1.created_at - a_t2.created_at <=7 and a_t1.created_at - a_t2.created_at >= 0
ORDER BY a_t1.user_id



