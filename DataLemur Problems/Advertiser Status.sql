# link : https://datalemur.com/questions/updated-status
# authot : Mohamed Ibrahim


SELECT COALESCE(a.user_id, dp.user_id) AS new_user_id,
CASE 
  WHEN dp.paid IS NULL THEN 'CHURN'
  WHEN dp.paid IS NOT NULL AND a.status = 'CHURN' THEN 'RESURRECT'
  WHEN dp.paid IS NOT NULL AND a.status <> 'CHURN' THEN 'EXISTING'
  ELSE 'NEW' END AS new_status
FROM advertiser a
FULL OUTER JOIN daily_pay dp
ON a.user_id = dp.user_id
ORDER BY new_user_id
