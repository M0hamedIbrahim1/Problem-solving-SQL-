/* link   : https://www.hackerrank.com/challenges/weather-observation-station-4/problem
    author : Mohamed Ibrahim */

select (count(city) - count(distinct city) ) from STATION
