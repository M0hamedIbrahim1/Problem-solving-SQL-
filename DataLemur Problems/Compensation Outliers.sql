/*
    link   : https://datalemur.com/questions/compensation-outliers
    author : Mohamed Ibrahim

*/


SELECT
  * 
FROM ( 
  SELECT 
  employee_id, 
  salary, 
  CASE 
    WHEN  salary > (SELECT AVG(salary)*2 FROM employee_pay ep WHERE ep.title = e.title)
  THEN 'Overpaid'
    WHEN salary <  (SELECT AVG(salary)/2 FROM employee_pay ep WHERE ep.title = e.title)
  THEN 'Underpaid' END AS Status
  FROM employee_pay e)t
WHERE status IS NOT NULL;


