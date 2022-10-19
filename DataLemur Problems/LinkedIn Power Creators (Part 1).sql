/*

    link : https://datalemur.com/questions/linkedin-power-creators
    author : Mohamed Ibrahim

*/



SELECT p.profile_id FROM personal_profiles p
inner JOIN company_pages c
on employer_id = company_id
WHERE p.followers > c.followers
ORDER BY p.profile_id



-- SELECT profile_id FROM personal_profiles 
-- WHERE followers > (SELECT followers FROM company_pages WHERE employer_id = company_id)
-- ORDER BY profile_id




