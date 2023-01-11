/*
    link   : https://www.codewars.com/kata/58941fec8afa3618c9000184/train/sql
    author : Mohamed Ibrahim

*/


select 
  id,
  greatest(1,ceil((desired_height - down_speed)::float / (up_speed - down_speed))::int) as num_days  
from
  growing_plant;
  
  
  
  
