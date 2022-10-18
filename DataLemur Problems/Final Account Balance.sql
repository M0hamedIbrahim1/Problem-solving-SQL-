/*
    link   : https://datalemur.com/questions/final-account-balance
    author : Mohamed Ibrahim

*/


SELECT account_id , 
      SUM(
      case
        WHEN transaction_type = 'Deposit' THEN amount 
        ELSE -amount end  
      )AS final_balance
     
FROM transactions
GROUP BY account_id;

 
 
 
 
