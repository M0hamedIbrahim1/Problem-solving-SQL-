/*

    link   : https://platform.stratascratch.com/coding/10077-income-by-title-and-gender?tabname=question
    aurhor : Mohamed Ibrahim


*/


 select
    e.employee_title,
    e.sex,
    avg(e.salary + b.bonus) as avg_compensation
from 
    sf_employee e
inner join 
(select worker_ref_id,sum(bonus) as bonus
from sf_bonus
group by worker_ref_id
) b 
on e.id = b.worker_ref_id

group by 1,2


