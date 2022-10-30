/*
    link   : https://datalemur.com/questions/sql-highest-grossing
    author : Mohamed Ibrahim

*/

select category,product,total_spend FROM 

(SELECT category ,product ,SUM(spend) as total_spend , 
row_number() OVER(PARTITION BY category ORDER BY SUM(spend) desc) as rows_
FROM product_spend
where EXTRACT(year FROM transaction_date ) = '2022'
GROUP BY category,product
) as s

WHERE rows_ < 3  




