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

other sol : 

SELECT 
ROUND(100.0*SUM(CASE WHEN ss.country_id1 <> ss.country_id THEN 1 ELSE 0 end)/(SELECT COUNT(*) FROM phone_calls), 1)
 FROM

(SELECT TT1.Caller_id , TT1.receiver_id , TT1.country_id1,TT2.country_id FROM (
  SELECT t1.caller_id as Caller_id,t1.receiver_id AS Receiver_id,t2.country_id AS Country_id1 FROM phone_calls t1
  LEFT JOIN phone_info t2
  on t1.caller_id = t2.caller_id
)as TT1
LEFT JOIN phone_info TT2
on TT1.receiver_id  = TT2.caller_id
) as  ss
