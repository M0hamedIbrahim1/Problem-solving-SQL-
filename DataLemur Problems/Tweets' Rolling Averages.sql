/*

    link   : https://datalemur.com/questions/rolling-average-tweets
    author : Mohamed Ibrahim



*/

SELECT 
  user_id
  ,tweet_date
  ,ROUND(
    AVG(tweets_count)OVER( PARTITION BY user_id ORDER BY tweet_date rows BETWEEN 2 PRECEDING and current row)
  ,2) as rolling_avg_3days
FROM (
    SELECT
        user_id
        ,tweet_date
        ,count(tweet_id) as tweets_count
    from
       tweets
    GROUP BY
       USER_ID
      ,TWEET_DATE
  ) as ss


    
    
    
    
