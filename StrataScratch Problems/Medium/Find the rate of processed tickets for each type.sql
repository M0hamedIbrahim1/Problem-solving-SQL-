/*
    link   : https://platform.stratascratch.com/coding/9781-find-the-rate-of-processed-tickets-for-each-type?tabname=question
    author : Mohamed Ibrahim
*/

select
    type,
    sum(
        case 
            when processed = 'TRUE' then 1
            else 0
        end
    )::NUMERIC / count(*) as processed_rate

from facebook_complaints
group by type




