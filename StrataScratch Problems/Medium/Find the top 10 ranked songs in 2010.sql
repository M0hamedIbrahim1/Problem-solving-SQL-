/*
  link   : https://platform.stratascratch.com/coding/10156-number-of-units-per-nationality?tabname=question
  author : Mohamed Ibrahim
*/


select 
  year_rank as rank,
  group_name,
  song_name
from 
  billboard_top_100_year_end
where year = 2010 and year_rank <= 10
group by 
  rank,
  group_name,
  song_name
order by 
  rank


