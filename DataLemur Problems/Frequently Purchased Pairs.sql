
/*
    link   : https://datalemur.com/questions/frequently-purchased-pairs
    author : Mohamed Ibrahim

*/




SELECT  count(*)
FROM transactions t1 inner JOIN transactions t2
on t1.transaction_id = t2.transaction_id
and t1.product_id < t2.product_id
where t2.product_id is not null;


