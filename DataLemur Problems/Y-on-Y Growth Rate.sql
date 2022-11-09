/*

    link   : https://datalemur.com/questions/yoy-growth-rate
    author : Mohamed Ibrahim

*/



SELECT *,ROUND(100*(curr_year_spend-prev_year_spend)/prev_year_spend,2) as yoy_rate FROM 

(SELECT EXTRACT(year FROM t1.transaction_date) as year ,t1.product_id,t1.spend as curr_year_spend,
(SELECT t2.spend FROM user_transactions t2 
WHERE EXTRACT(year FROM t1.transaction_date) = EXTRACT(year FROM t2.transaction_date)+1
and t1.product_id = t2.product_id
)as prev_year_spend
 

FROM(
SELECT * FROM user_transactions 
ORDER BY product_id
) as t1
) as t2



