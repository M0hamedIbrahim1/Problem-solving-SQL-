/*
    link  : https://www.hackerrank.com/challenges/weather-observation-station-13/problem
*/

select ROUND(sum(LAT_N),4) from STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345
