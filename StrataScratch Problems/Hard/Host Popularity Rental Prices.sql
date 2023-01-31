/*

  link : https://platform.stratascratch.com/coding/9632-host-popularity-rental-prices?tabname=question
  author : Mohamed Ibrahim
  
*/


select 
    host_pop_rating,
    min(price),
    avg(price),
    max(price)
from
(
    select
        concat(price, room_type, host_since, zipcode,number_of_reviews)as host_id,
        price,
        number_of_reviews ,
        case 
            when  number_of_reviews = 0 then 'new'
            when  number_of_reviews between 1 and 5 then 'Rising'
            when  number_of_reviews between 6 and 15 then 'Trending Up'
            when  number_of_reviews between 16 and 40 then 'Popular'
            else 'Hot'
        end as host_pop_rating

    from airbnb_host_searches
    group by host_id,number_of_reviews,price
    
) as t1

group by host_pop_rating


