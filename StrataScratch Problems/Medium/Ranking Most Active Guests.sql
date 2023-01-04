# link   : https://platform.stratascratch.com/coding/10159-ranking-most-active-guests?tabname=question&code_type=3
# author : Mohamed Ibrahim


select DENSE_RANK()over(order by sum_n_messages desc ),* from
(
select 
    id_guest, 
    sum(n_messages) as sum_n_messages 
 from
    airbnb_contacts
group by
    id_guest
) as t1

