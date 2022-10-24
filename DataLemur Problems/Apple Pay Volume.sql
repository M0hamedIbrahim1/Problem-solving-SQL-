/*

    link   : https://datalemur.com/questions/ad-campaign-roas
    author : Mohamed Ibrahim

*/


SELECT 
  merchant_id,
  sum(
        CASE 
            WHEN lower(payment_method) = 'apple pay' THEN transaction_amount
            ELSE 0
        end
      ) as volume
FROM transactions
GROUP BY merchant_id
ORDER BY volume DESC
 
 
 
 
