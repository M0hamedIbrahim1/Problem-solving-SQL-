/*

    link   : https://platform.stratascratch.com/coding/10352-users-by-avg-session-time?tabname=question&code_type=3
    author : Mohamed Ibrahim

*/


select user_id , avg(TIMESTAMPDIFF(second,page_load,page_exit)) as session_time
from 
(select 
    user_id,
    date(timestamp), 
    MAX(IF(action = 'page_load', timestamp, NULL)) as page_load,
    min(if(action = 'page_exit',timestamp,null)) as page_exit
from facebook_web_log
group by 1,2

) as t1
group by 1
having session_time is not null


