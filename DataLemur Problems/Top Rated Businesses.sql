/*
    link   : https://datalemur.com/questions/sql-top-businesses
    author : Mohamed Ibrahim
    
    
*/
SELECT COUNT(business_id) as  business_count ,
       ROUND(100*COUNT(business_id) 
       / (SELECT COUNT(business_id) FROM reviews),0) as top_rated_pct


FROM reviews 
WHERE review_stars >=4 


