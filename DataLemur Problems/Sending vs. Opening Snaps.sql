/*

    link   : https://datalemur.com/questions/time-spent-snaps
    author : Mohamed Ibrahim

*/


select age_bucket,
round((s_ts/(s_ts+o_ts))*100,2) as send_perc,
round((o_ts/(s_ts+o_ts))*100,2) as open_perc
from
(
  SELECT b.age_bucket,
  SUM(case when activity_type = 'open' then a.time_spent end) as o_ts,
  SUM(case when activity_type = 'send' then a.time_spent end) as s_ts
  FROM activities as a
  left join 
  age_breakdown as b on a.user_id = b.user_id
  where a.activity_type in ('open','send') 
  group by b.age_bucket
) as c
;





