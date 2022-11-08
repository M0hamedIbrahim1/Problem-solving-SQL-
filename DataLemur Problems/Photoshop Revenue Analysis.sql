/*

  Link   : https://datalemur.com/questions/photoshop-revenue-analysis
  author : Mohamed Ibrahim


*/


SELECT Customer_id , SUM(Revenue) FROM 
(
SELECT customer_id AS Customer_id,
       product,CASE WHEN product = 'Photoshop' THEN 0 ELSE revenue END AS Revenue
FROM adobe_transactions 

) AS G1
WHERE Customer_id in (
    SELECT DISTINCT customer_id FROM adobe_transactions 
    WHERE product = 'Photoshop'
)
GROUP BY Customer_id


other sol : 


SELECT 
  customer_id,
  SUM(revenue) AS revenue
FROM adobe_transactions
WHERE customer_id IN (
  SELECT customer_id FROM adobe_transactions WHERE product = 'Photoshop')
  AND product <> 'Photoshop'
GROUP BY customer_id
ORDER BY customer_id;



