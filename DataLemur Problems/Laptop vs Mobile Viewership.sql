/*
    link   : https://datalemur.com/questions/laptop-mobile-viewership
    author : Mohamed ibrahim

*/


SELECT 
  CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END AS laptop_views, 
  CASE WHEN device_type in ('tablet', 'phone') THEN 1 ELSE 0 END AS mobile_views 
FROM viewership;


