/*
    link   : https://leetcode.com/problems/find-followers-count/description/
    author : Mohamed Ibrahim

*/


select user_id , count(distinct follower_id) as followers_count
from Followers 
group by user_id


