/*
    link : https://www.hackerrank.com/challenges/weather-observation-station-16
*/


select round(min(LAT_N),4) from STATION WHERE LAT_N > 38.7780
