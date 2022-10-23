/*

    link   : https://datalemur.com/questions/teams-power-users
    author : Mohamed Ibrahim 

*/
SELECT sender_id , COUNT(receiver_id) as message_count FROM messages
WHERE EXTRACT(month FROM sent_date) = '8' 
and   EXTRACT(year FROM sent_date) = '2022'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2

