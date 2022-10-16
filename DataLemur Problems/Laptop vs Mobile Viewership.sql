/*
    link   : https://datalemur.com/questions/laptop-mobile-viewership
    author : Mohamed ibrahim

*/


SELECT 
    sum(case WHEN device_type in ('tablet' , 'phone') then 1 else 0 end ) as mobile_views,
    sum(case WHEN device_type = 'laptop' then 1 else 0 END) as laptop_views
  FROM viewership;
