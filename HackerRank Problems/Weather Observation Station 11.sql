*/

    https://www.hackerrank.com/challenges/weather-observation-station-11/problem
 */


select DISTINCT CITY FROM STATION WHERE 
CITY NOT LIKE '[aoeiu]%'
or
CITY NOT LIKE '%[aoeiu]'
