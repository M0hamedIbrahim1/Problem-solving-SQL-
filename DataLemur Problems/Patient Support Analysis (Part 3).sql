/*

    link   : https://datalemur.com/questions/patient-call-history
    author : Mohamed ibrahim

*/

SELECT COUNT(DISTINCT policy_holder_id) 
FROM(
  SELECT policy_holder_id ,
  EXTRACT(day FROM lag(call_received,1)OVER( PARTITION BY policy_holder_id ORDER BY call_received DESC) - call_received)as duration
  FROM callers 
) as t1 
WHERE duration < 7


