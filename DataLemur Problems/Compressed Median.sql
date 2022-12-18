/*
    LINK   : https://datalemur.com/questions/alibaba-compressed-median
    AUTHOR : Mohamed ibrahimx
*/

select round(percentile_cont(0.5) within group (order by item_count asc)::decimal,1) as median
from
(
  select item_count
  from items_per_order
  group by item_count,
           generate_series(1,order_occurrences)
) input_data



