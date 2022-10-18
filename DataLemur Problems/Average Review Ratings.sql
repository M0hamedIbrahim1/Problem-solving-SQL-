/*
    link : https://datalemur.com/questions/sql-avg-review-ratings
    author : Mohamed Ibrahim
*/


SELECT EXTRACT(month from submit_date) as mth
      ,product_id as product,
      ROUND(avg(stars),2) as avg_stars
FROM reviews 
GROUP BY product_id, EXTRACT(month from submit_date)
ORDER BY mth,product_id



