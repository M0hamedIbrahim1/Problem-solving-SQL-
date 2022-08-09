/*
    https://www.hackerrank.com/challenges/weather-observation-station-10
*/

SELECT DISTINCT CITY FROM STATION WHERE NOT CITY LIKE '%[aeiou]'
