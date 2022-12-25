/*

    link   : https://datalemur.com/questions/alibaba-compressed-mean
    author : Mohamed Ibrahim

*/




SELECT ROUND(SUM(item_count::DECIMAl * order_occurrences) /SUM(order_occurrences),1) as total 
FROM items_per_order


