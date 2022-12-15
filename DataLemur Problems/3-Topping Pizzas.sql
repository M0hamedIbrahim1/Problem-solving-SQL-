
/*
  link   : https://datalemur.com/questions/pizzas-topping-cost
  author : Mohamed Ibrahim

*/


SELECT CONCAT(p1.topping_name,',',p2.topping_name,',',p3.topping_name) as pizza,
p1.ingredient_cost+p2.ingredient_cost +p3.ingredient_cost as sum_cost
FROM 
  pizza_toppings AS p1,
  pizza_toppings AS p2,
  pizza_toppings AS p3 
  WHERE p1.topping_name < p2.topping_name
  AND p2.topping_name < p3.topping_name
  ORDER BY sum_cost DESC,pizza


