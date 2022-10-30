/*

    link   : https://datalemur.com/questions/sql-first-transaction
    author : Mohamed Ibrahim



*/


SELECT COUNT(DISTINCT user_id) AS users
FROM (
    SELECT 
      user_id, 
      spend, 
      RANK() OVER (
        PARTITION BY user_id 
        ORDER BY transaction_date ASC) AS row_num
    FROM user_transactions) AS purchase_num
WHERE row_num = 1 
  AND spend >= 50;
  
  
  
  
  other sol : 
  
SELECT COUNT(distinct user_id) FROM user_transactions u
WHERE (u.user_id,u.transaction_date) in (SELECT user_id,MIN(transaction_date) FROM user_transactions GROUP BY  user_id)
and u.spend >= 50

