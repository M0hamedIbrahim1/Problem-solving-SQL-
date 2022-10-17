/*
    link   : https://datalemur.com/questions/completed-trades
    author : Mohamed Ibrahim

*/



SELECT u.city as city , COUNT(t.user_id) FROM users u
inner JOIN trades t
on u.user_id = t.user_id
where t.status = 'Completed'
GROUP BY u.city
ORDER BY  COUNT(u.user_id) DESC
LIMIT 3




