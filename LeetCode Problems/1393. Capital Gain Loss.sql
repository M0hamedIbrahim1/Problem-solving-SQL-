/*

  Link : https://leetcode.com/problems/capital-gainloss/description/
  author : Mohamed Ibrahim

*/


select stock_name , 
    sum(
        case 
            when operation = 'Sell' then price
            when operation = 'Buy' then -price
        END   
    ) 
    AS capital_gain_loss   
from Stocks 
group by stock_name    



