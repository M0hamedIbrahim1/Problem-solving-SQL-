
/*
      link : https://datalemur.com/questions/histogram-users-purchases
    author : Mohamed Ibrahim

*/


SELECT 
  transaction_date, 
  user_id,
  COUNT(product_id) AS purchase_count
FROM (
  SELECT 
    transaction_date, 
    user_id, 
    product_id, 
    RANK() OVER (
      PARTITION BY user_id 
      ORDER BY transaction_date DESC) AS days_rank 
  FROM user_transactions) AS t1
WHERE days_rank = 1 
GROUP BY transaction_date, user_id
ORDER BY transaction_date;

