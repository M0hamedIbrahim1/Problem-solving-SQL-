# min 5 price 
#https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all

SELECT Price FROM Products group by Price
order by Price asc limit 0,5
