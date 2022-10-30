/*


    link   : https://datalemur.com/questions/linkedin-power-creators-part2
    author : Mohamed Ibrahim


*/


 
SELECT Profile_id 
FROM
(SELECT p.profile_id as Profile_id ,p.followers as person_follow,c.followers as followesr_Com FROM personal_profiles p 
LEFT JOIN employee_company e
on p.profile_id = e.personal_profile_id 
LEFT JOIN company_pages c
on e.company_id = c.company_id
) as ss 

GROUP BY Profile_id,person_follow
HAVING person_follow > MAX(followesr_Com) 
order by Profile_id ASC





other sol : 

SELECT pp.profile_id FROM personal_profiles pp 
JOIN employee_company  ec ON ec.personal_profile_id = pp.profile_id
JOIN company_pages cp ON cp.company_id = ec.company_id
GROUP BY pp.profile_id,pp.followers
HAVING pp.followers > max(cp.followers)
ORDER BY  pp.profile_id


