/*
    Link   : https://leetcode.com/problems/recyclable-and-low-fat-products/
    author : Mohamed Ibrahim

*/

select product_id from Products 
where low_fats = 'Y' and recyclable  = 'Y'
