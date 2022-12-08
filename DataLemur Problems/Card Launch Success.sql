/*

    link   : https://datalemur.com/questions/card-launch-success
    author : Mohamed Ibrahim

*/


SELECT card_name , issued_amount FROM (

SELECT * , RANK() OVER(PARTITION BY card_name ORDER BY issue_year , issue_month ) as ranking
FROM monthly_cards_issued 
) as t1 
WHERE ranking = 1
ORDER BY issued_amount desc




