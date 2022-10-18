/*

    link   : https://datalemur.com/questions/sql-histogram-tweets
    author : Mohamed Ibrahim

*/



select tweets_num as tweet_bucket, COUNT(user_id) as users_num
FROM (
  SELECT 
    user_id, 
    COUNT(tweet_id) AS tweets_num 
  FROM tweets 
  WHERE tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
  GROUP BY user_id
) as ff
GROUP BY tweets_num



