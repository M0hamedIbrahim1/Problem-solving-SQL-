/*

    link   : https://datalemur.com/questions/long-calls-growth
    author : Mohamed Ibrahim 


*/


SELECT
  year,
  month,
  ROUND((total -LAG(total,1) OVER (ORDER BY year,month)) * 100.0 / LAG(total,1) OVER (ORDER BY year,month),1) as growth
  
FROM
  (
    SELECT 
      EXTRACT(year FROM call_received) as year,
      EXTRACT(month FROM call_received) as month,
      COUNT(*) as total
    FROM callers
    WHERE call_duration_secs > 300
    GROUP BY year, month
    ORDER BY year, month
  ) t1;
  
  
  
  
  
