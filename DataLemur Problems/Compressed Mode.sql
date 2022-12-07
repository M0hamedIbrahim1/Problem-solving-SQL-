/*

    link   : https://datalemur.com/questions/alibaba-compressed-mode
    author : Mohamed Ibrahim

*/


SELECT item_count as mode
FROM (
  SELECT 
  item_count,	order_occurrences,
  RANK() OVER(ORDER BY order_occurrences desc)
  FROM items_per_order) as raw
WHERE rank = 1 ;


