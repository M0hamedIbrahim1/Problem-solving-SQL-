/*

    link   : https://platform.stratascratch.com/coding/9915-highest-cost-orders?tabname=question
    author : Mohamed Ibrahim

*/


select
    c.first_name,
    t1.total_order_cost,
    t1.order_date
from 
    customers c
inner join 
(
    select 
        cust_id,
        order_date,
        sum(total_order_cost) as total_order_cost,
        rank()over(order by sum(total_order_cost) desc) as rnk
     from orders
     where order_date between '2019-02-01' and '2019-05-01'
     group by 
        cust_id,
        order_date
)as t1
on c.id = t1.cust_id
where rnk = 1



