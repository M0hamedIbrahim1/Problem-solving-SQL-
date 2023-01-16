/*

    link   : https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?tabname=question
    author : Mohamed Ibrahim

*/


select t.worker_title from title t
inner join 
(
select worker_id,salary from worker
where salary =(select max(salary) from worker)
) as w

on w.worker_id = t.worker_ref_id
