/*
    link   : https://datalemur.com/questions/sql-third-transaction
    author : Mohamed Ibrahim

*/


SELECT user_id,spend,transaction_date FROM(
  SELECT 
  user_id, 
  spend, 
  transaction_date, 
  row_number() OVER(
    PARTITION BY user_id ORDER BY transaction_date
  ) as row_num
FROM transactions
) as ff
WHERE row_num = 3




