/*
    link   : https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/
    author : Mohamed Ibrahim
*/


select actor_id , director_id from ActorDirector 
group by actor_id , director_id 
having count(director_id) > 2


