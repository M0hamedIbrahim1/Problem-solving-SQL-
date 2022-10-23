/*
    link   : https://datalemur.com/questions/money-transfer-relationships
    author : Mohamed Ibrahim

*/

SELECT COUNT(payer_id) / 2 AS unique_relationships
FROM ( 
  SELECT payer_id, recipient_id
  FROM payments
  INTERSECT
  SELECT recipient_id, payer_id
  FROM payments) AS relationships;
  
  
  
  
