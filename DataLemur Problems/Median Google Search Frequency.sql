/*

    link   : https://datalemur.com/questions/median-search-freq
    author : Mohamed Ibrahim

*/


select PERCENTILE_CONT(0.50) WITHIN group (order by searches) as meadian from(
select searches from search_frequency
group by searches,
          GENERATE_SERIES(1, num_users)
          order by 1
) as t1



