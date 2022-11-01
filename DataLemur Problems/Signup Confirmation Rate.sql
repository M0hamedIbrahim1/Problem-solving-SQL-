/*

    link   : https://datalemur.com/questions/signup-confirmation-rate
    author : Mohamed Ibrahim
*/


SELECT
  ROUND(SUM(ALLL)::DECIMAL / COUNT(user_id), 2) AS confirmation_rate
FROM (
  SELECT
    *,
    CASE WHEN texts.email_id IS NOT NULL THEN 1 END AS signup,
    CASE WHEN texts.signup_action = 'Confirmed' THEN 1 ELSE 0 END AS ALLL
  FROM emails
  INNER JOIN texts
    ON emails.email_id = texts.email_id
) AS rate;




other sol : 


SELECT 
ROUND(
    SUM(
    CASE WHEN signup_action = 'Confirmed' THEN 1 else 0 end
    )::DECIMAL / 
    SUM(
    CASE WHEN signup_action in ('Not Confirmed','Confirmed') THEN 1 else 0 end
    )::DECIMAL
,2)

FROM emails e
inner JOIN texts t
on e.email_id = t.email_id



