/*
    link   : https://leetcode.com/problems/not-boring-movies/description/ 
    author : Mohamed Ibrahim

*/

select *
from cinema
where mod(id, 2) = 1 and description != 'boring'
order by rating DESC
;


