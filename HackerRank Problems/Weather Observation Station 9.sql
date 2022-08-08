/*
    https://www.hackerrank.com/challenges/weather-observation-station-9
*/

SELECT DISTINCT CITY FROM STATION WHERE NOT CITY LIKE '[aeiou]%'
