/*
    link : https://www.hackerrank.com/challenges/weather-observation-station-15/problem
*/




Select ROUND(LONG_W,4) from STATION 
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N<137.2345);
