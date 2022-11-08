/*
    link   : https://datalemur.com/questions/user-retention
    author : Mohamed Ibrahim

*/
SELECT 7 as month, COUNT(user_id) as monthly_active_users FROM

(SELECT user_id
FROM user_actions
GROUP BY user_id
HAVING MIN(EXTRACT(month FROM event_date)) <= 6 
  and MAX(EXTRACT(month FROM event_date)) = 7
) as t1




other sol : 
SELECT
  EXTRACT(MONTH FROM event_date) as month,
  COUNT(DISTINCT user_id) as event_date
FROM user_actions 
WHERE user_id in 
  (SELECT 
  user_id
  FROM user_actions 
  WHERE EXTRACT(MONTH FROM event_date) = 6
  ) 

AND 
  EXTRACT(MONTH FROM event_date) = 7
GROUP BY EXTRACT(MONTH FROM event_date) 


