 /*

   link   : https://platform.stratascratch.com/coding/514-marketing-campaign-success-advanced?code_type=3
   author : Mohamed Ibrahim

*/

select 
    count(distinct user_id) 
from
(
    select 
        user_id ,
        dense_rank()over(partition by user_id order by created_at) as date_rnk,
        dense_rank()over(partition by user_id,product_id order by created_at) as product_rnk
    from marketing_campaign
) as rnk
where date_rnk > 1 and product_rnk =1 


/*
    other soluatin : 
*/

SELECT 
  count(distinct user_id) 
from marketing_campaign
where concat(user_id,product_id) not in 
(SELECT user_product_id from
   (SELECT
        concat(user_id,product_id) as user_product_id ,
        rank()over(PARTITION by user_id order by created_at) as rnk
    from marketing_campaign) as first_product
where rnk = 1)


