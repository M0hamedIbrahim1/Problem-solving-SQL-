/*
    link   : https://datalemur.com/questions/tesla-unfinished-parts
    author : Mohamed Ibrahim

*/

SELECT DISTINCT part
FROM parts_assembly
WHERE finish_date is NULL ;


