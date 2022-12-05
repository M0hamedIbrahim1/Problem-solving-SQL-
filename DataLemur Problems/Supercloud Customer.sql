/*

  Link   : https://datalemur.com/questions/supercloud-customer
  author : Mohamed Ibrahim

*/



SELECT customer_id
FROM customer_contracts
INNER JOIN products
ON customer_contracts.product_id = products.product_id
GROUP BY customer_id
HAVING COUNT(DISTINCT product_category) >= (SELECT COUNT(DISTINCT product_category) FROM products)



