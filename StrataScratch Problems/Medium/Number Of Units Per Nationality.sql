/*

  link   : https://platform.stratascratch.com/coding/10156-number-of-units-per-nationality?tabname=question
  author : Mohamed Ibrahim

*/


select 
    distinct a_h.nationality,
    t1.apartment_count 
from
    airbnb_hosts a_h
left join 
    (select host_id,count(*) as apartment_count from airbnb_units
    where unit_type = 'Apartment'
    group by host_id ) as t1
on a_h.host_id = t1.host_id
where age < 30 and t1.host_id is not null
 
 
 
