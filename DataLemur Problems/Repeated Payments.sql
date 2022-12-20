/*

    Link   : https://datalemur.com/questions/repeated-payments
    author : Mohamed Ibrahim

*/

SELECT COUNT(merchant_id)FROM (
  SELECT
    merchant_id,
    credit_card_id,
    transaction_timestamp,
    EXTRACT(EPOCH FROM transaction_timestamp -  lag(transaction_timestamp)OVER(PARTITION BY credit_card_id,merchant_id,amount ORDER BY transaction_timestamp)) / 60 as MINUTEs,
  
    amount
  FROM transactions
) as t1
 
WHERE MINUTEs <= 10;



other sol : 

SELECT COUNT(*)
FROM transactions t1 JOIN transactions t2
on t1.transaction_id < t2.transaction_id
and t1.merchant_id = t2.merchant_id
and t1.credit_card_id = t2.credit_card_id
and t1.amount = t2.amount
and EXTRACT(EPOCH FROM t2.transaction_timestamp - t1.transaction_timestamp)/60 <= 10;


