/*
    link    : https://leetcode.com/problems/find-customer-referee/
    author  : Mohamed Ibrahim
*/


SELECT name 
FROM customer
WHERE referee_id <> 2 OR referee_id IS NULL

