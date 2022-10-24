/*
    link   : https://datalemur.com/questions/sql-app-ctr
    author : Mohamed Ibrahim

*/

SELECT app_id , 
ROUND(100.0 * sum(CASE WHEN event_type = 'click' THEN 1 ELSE 0 end) 
/ 
sum(CASE WHEN event_type = 'impression' THEN 1 else 0 end),2) as ctr

FROM events
WHERE timestamp >= '2022-01-01' AND timestamp < '2023-01-01'
GROUP BY app_id
