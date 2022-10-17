/*
    link   : https://datalemur.com/questions/duplicate-job-listings
    author : Mohamed Ibrahim

*/

SELECT count(DISTINCT company_id) as co_w_duplicate_jobs
FROM (
  SELECT 
    company_id, 
    title, 
    description, 
    COUNT(job_id) AS job_count
  FROM job_listings
  GROUP BY 
    company_id, 
    title, 
    description) as gg
WHERE job_count > 1;



