/*

    link   : https://datalemur.com/questions/consulting-bench-time
    author : Mohamed Ibrahim

*/

SELECT employee_id,
      (365 - bench_days) as bench_days
FROM (

  SELECT
    employee_id,
    SUM(end_date+1 -start_date) as bench_days 
  FROM
    staffing s 
  inner JOIN 
    consulting_engagements c
  on s.job_id = c.job_id
    WHERE s.is_consultant = 'true' 
    GROUP BY employee_id

) as ss






