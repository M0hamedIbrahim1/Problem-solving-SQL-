/*

    Link : https://datalemur.com/questions/cards-issued-difference
    author : Mohamed Ibrahim


*/

SELECT 
  card_name, 
  max(issued_amount)-min(issued_amount)as dif
FROM  
  monthly_cards_issued
GROUP BY card_name
order by dif DESC


