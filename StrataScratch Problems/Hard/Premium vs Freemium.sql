/*

  Link   : https://platform.stratascratch.com/coding/10300-premium-vs-freemium?tabname=question
  author : Mohamed Ibrahim

*/

select 
    date,
    non_paying,
    paying 
from
    (select
        date, 
        sum(case when paying_customer = 'no' then downloads else 0 end)  as non_paying,
        sum(case when paying_customer = 'yes' then downloads else 0 end ) as paying
    
    from ms_user_dimension ms_user
    inner join ms_download_facts ms_download
    on ms_user.user_id = ms_download.user_id
    left join ms_acc_dimension ms_acc
    on ms_user.acc_id = ms_acc.acc_id
    group by date
    order by date) as t1 
where non_paying > paying


