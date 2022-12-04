/*

    link   : https://datalemur.com/questions/mean-median-mode
    author : Mohamed Ibrahim

*/

SELECT 
  ROUND(AVG(email_count)) as mean,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY email_count) AS median,
  MODE() WITHIN GROUP (ORDER BY email_count) AS mode
 FROM inbox_stats;
 
 
 
