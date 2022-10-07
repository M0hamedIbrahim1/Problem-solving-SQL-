/*

Link   : https://leetcode.com/problems/sales-analysis-iii/description/
author : Mohamed Ibrahim

*/


select P.product_id , P.product_name from Product P
left join Sales S
on P.product_id = S.product_id 
group by S.product_id 
HAVING MAX(S.sale_date) <= '2019-03-31 'AND MIN(S.sale_date) >= '2019-01-01'


