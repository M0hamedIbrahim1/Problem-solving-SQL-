/*
    link   : https://datalemur.com/questions/uncategorized-calls-percentage
    author : Mohamed Ibrahim

*/


SELECT ROUND(
    100.0*(
    SELECT COUNT(*) FROM callers
    WHERE call_category IS NULL OR call_category = 'n/a'
    )
    /
    (SELECT COUNT(*) FROM callers)
,1
)as uncategorised_call_pct
 
 
 
