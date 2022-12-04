/*

    link   : https://www.javatpoint.com/rank-function-in-sql-server
    author : Mohamed Ibrahim

*/

SELECT manufacturer , drug FROM

(select 
  manufacturer ,
  units_sold ,
  drug ,
  row_number()OVER(PARTITION BY manufacturer ORDER BY units_sold desc) as rr
FROM pharmacy_sales ) as g1

WHERE g1.rr <=2


