/*

    link   : https://datalemur.com/questions/fill-missing-product
    author : Mohamed Ibrahim

*/

SELECT product_id,
       FIRST_VALUE(category)OVER(PARTITION BY g_c),
       name
FROM (

  SELECT product_id,
         category,
         name,
         COUNT(category)OVER(order BY product_id) as g_c
  FROM products 

) as ss




 
