/*

    link   : https://datalemur.com/questions/total-drugs-sales
    author : Mohamed ibrahim

*/




SELECT manufacturer , concat('$',sale,' million') 
FROM 
(SELECT manufacturer, ROUND(ceil(SUM(total_sales))/1000000,0)  as sale FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY sale DESC) as t1



other sol : 


SELECT 
  manufacturer, 
  CONCAT('$', ROUND(SUM(total_sales) / 1000000), ' million') AS sales_mil 
FROM pharmacy_sales 
GROUP BY manufacturer 
ORDER BY SUM(total_sales) DESC;


