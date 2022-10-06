/*

    link   : https://leetcode.com/problems/top-travellers/description/?envType=study-plan&id=sql-i
    author : Mohamed Ibrahim

*/


select name , if (U.id = R.user_id , sum(distance),0) as travelled_distance
from Users U
left join Rides R on U.id = R.user_id  
group by user_id  
order by sum(distance) desc , name



