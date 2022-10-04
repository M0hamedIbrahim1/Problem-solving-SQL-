/*
    link   : https://leetcode.com/problems/game-play-analysis-i/?envType=study-plan&id=sql-i
    author : Mohamed Ibrahim
*/


select player_id , min(event_date) as first_login 
from Activity 
group by player_id 


