/*

    link   : https://datalemur.com/questions/sql-bad-experience
    author : Mohamed Ibrahim

*/


SELECT 
ROUND(
100.0 * COUNT(CASE WHEN status='completed successfully' THEN NULL ELSE trip_id END)
/COUNT(trip_id),2)
FROM orders
JOIN customers ON customers.customer_id=orders.customer_id
WHERE
EXTRACT(MONTH FROM signup_timestamp)='6'AND
signup_timestamp + INTERVAL '14' DAY>= order_timestamp;


