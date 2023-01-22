/*

    link   : https://platform.stratascratch.com/coding/9782-customer-revenue-in-march?tabname=question
    author : Mohamed Ibrahim

*/


select 
  cust_id,
  sum(total_order_cost) as revenue from orders
where extract(month from order_date) = '3' and extract(year from order_date) = '2019' 
group by 
  cust_id
order by 
  revenue desc


