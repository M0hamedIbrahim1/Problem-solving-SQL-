/*
    Link   : https://leetcode.com/problems/group-sold-products-by-the-date/?envType=study-plan&id=sql-i
    author : Mohamed Ibrahim
*/

select sell_date, count(distinct product) as num_sold, 
group_concat(distinct product) as products 
from activities 
group by sell_date
order by sell_date

