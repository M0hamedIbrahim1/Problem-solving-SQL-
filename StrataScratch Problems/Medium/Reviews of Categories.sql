/*

    link   : https://platform.stratascratch.com/coding/10049-reviews-of-categories?tabname=question
    author : Mohamed Ibrahim 

*/


SELECT 
  unnest( string_to_array(categories, ';')) AS category,
  sum(review_count) as review_cnt
FROM
  yelp_business
group by 
  category
order by 
  review_cnt desc


