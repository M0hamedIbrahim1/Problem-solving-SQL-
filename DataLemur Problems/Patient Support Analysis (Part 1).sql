/*

    link   : https://datalemur.com/questions/frequent-callers
    author : Mohamed Ibrahim

*/

SELECT COUNT(*) as member_count FROM (

    SELECT count(*) as cnt FROM callers
    GROUP BY policy_holder_id

) as t1
WHERE cnt >= 3


