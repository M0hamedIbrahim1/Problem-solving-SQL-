/*
    link   : https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/
    author : Mohamed Ibrahim

*/

select customer_number from orders 
group by customer_number 
order by (count(order_number)) desc 
limit 1

