/*

    Link   : https://datalemur.com/questions/same-week-purchases  
    author : Mohamed ibrahim

*/


SELECT ROUND(count(DISTINCT s.user_id)*1.0 / (SELECT COUNT(*) from signups),2)*100
AS single_purchase_pct
FROM signups s
JOIN user_purchases up ON up.user_id = s.user_id 
and EXTRACT(day from up.purchase_date - s.signup_date) <= 7

