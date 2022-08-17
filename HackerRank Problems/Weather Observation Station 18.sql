/*

    link : https://www.hackerrank.com/challenges/weather-observation-station-18/problem

*/

SELECT ROUND( MAX(lat_n)-MIN(lat_n) + MAX(long_w)-MIN(long_w), 4) FROM Station;
