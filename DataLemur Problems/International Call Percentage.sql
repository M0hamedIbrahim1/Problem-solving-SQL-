# link   : https://datalemur.com/questions/international-call-percentage
# author : Mohamed Ibrahim

SELECT 
ROUND(int_calls*100.0/all_calls,1) as international_calls_pct
FROM 
(SELECT 
SUM(CASE WHEN b.country_id <> c.country_id 
THEN 1 ELSE 0 END) as int_calls,
COUNT(*) as all_calls
FROM phone_calls a  
INNER JOIN phone_info b  
ON a.caller_id = b.caller_id
INNER JOIN phone_info c  
ON a.receiver_id = c.caller_id) table1

