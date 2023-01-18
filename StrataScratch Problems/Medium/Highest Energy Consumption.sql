/*

# link   : https://platform.stratascratch.com/coding/10064-highest-energy-consumption?tabname=question
# author : Mohamed ibrahim

*/

select
    date,
    consumption as total_energy
from(
    select
        date , 
        sum(consumption) as consumption,
        dense_rank()over( order by sum(consumption) desc) as rnk 
    from
        (select * from fb_eu_energy
        union 
        select * from fb_asia_energy
        union
        select * from fb_na_energy
        ) as t1
    group by date
)as t2
where rnk =1



