/* https://www.hackerrank.com/challenges/full-score/problem */

select 
  h.hacker_id, 
  h.name 
from 
  hackers as h, 
  challenges as c, 
  difficulty as d, 
  submissions as s 
where 
  c.difficulty_level = d.difficulty_level 
  and d.score = s.score 
  and c.challenge_id = s.challenge_id 
  and h.hacker_id = s.hacker_id 
group by 
  h.hacker_id, 
  h.name 
having 
  count(s.hacker_id)> 1 
order by 
  count(s.hacker_id) desc, 
  s.hacker_id
  
  
