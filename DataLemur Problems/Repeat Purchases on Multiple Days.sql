/*

    link   : https://datalemur.com/questions/sql-repeat-purchases
    author : Mohamed Ibrahim

*/


SELECT COUNT(user_id) FROM 
(SELECT user_id,product_id FROM purchases
GROUP BY user_id,product_id
HAVING COUNT(purchase_date) > 1 AND
MIN(date(purchase_date)) <> MAX(date(purchase_date)))
as ss

