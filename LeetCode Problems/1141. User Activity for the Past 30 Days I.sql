/*
    link   : https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
    author : Mohamed Ibrahim

*/


select activity_date as day, count(distinct user_id) as active_users 
from Activity
where datediff('2019-07-27', activity_date) between 0 and 29
group by activity_date;


