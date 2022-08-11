/*
  https://www.hackerrank.com/challenges/weather-observation-station-12/problem
*/

select DISTINCT CITY FROM STATION WHERE 
CITY NOT LIKE '[aoeiu]%'
AND
CITY NOT LIKE '%[aoeiu]'

