/*
    link   : https://datalemur.com/questions/sql-purchasing-activity
    author : Mohamed Ibrahim
*/

SELECT 
   order_date,
   product_type ,
   SUM(quantity)OVER(PARTITION BY product_type ORDER BY order_date)

FROM 
  total_trans
order BY 
  order_date


