/*
    link   : https://www.hackerrank.com/challenges/weather-observation-station-6/problem
    author : Mohamed Ibrahim
*/

SELECT
DISTINCT(CITY)
FROM STATION
WHERE
CITY LIKE 'A%' OR
CITY LIKE 'E%' OR
CITY LIKE 'I%' OR
CITY LIKE 'O%' OR
CITY LIKE 'U%'
ORDER BY CITY ASC;
