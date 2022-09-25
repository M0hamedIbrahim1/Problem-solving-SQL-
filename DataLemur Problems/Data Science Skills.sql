/*

  link : https://datalemur.com/questions/matching-skills
  author : Mohamed Ibrahim
  
*/

SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id HAVING COUNT(skill) = 3 
ORDER BY 1
