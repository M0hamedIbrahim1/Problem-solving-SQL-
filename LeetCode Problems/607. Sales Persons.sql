/*

    link   : https://leetcode.com/problems/sales-person/?envType=study-plan&id=sql-i
    author : Mohamed Ibrahim

*/

select name from salesperson 
where sales_id not in 
(
    select sales_id from orders as o join company as c on(o.com_id=c.com_id and c.name="RED")
)


