/*

    link   : https://datalemur.com/questions/sql-highest-products
    author : Mohamed Ibrahim

*/

SELECT user_id , COUNT(transaction_id) as product_num 
FROM user_transactions 
GROUP BY user_id
HAVING sum(spend) >= 1000
ORDER BY product_num DESC,sum(spend) desc
LIMIT 3




