/* 
 
 link   : https://datalemur.com/questions/second-day-confirmation
 author : Mohamed Ibrahim
 
 */
 
 
 
 SELECT user_id FROM texts as t
LEFT JOIN emails as e ON e.email_id = t.email_id
WHERE t.signup_action = 'Confirmed' AND
EXTRACT(DAY FROM (t.action_date - e.signup_date)) = 1;


 
 
