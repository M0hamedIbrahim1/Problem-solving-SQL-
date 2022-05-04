/* https://www.hackerrank.com/challenges/weather-observation-station-20/problem */

select cast(lat_n as decimal(10,4)) from
(select lat_n, row_number() over (order by lat_n desc) as rnum1 from station) t1
where rnum1 = 
(select case when max(rnum)%2=0 then max(rnum)/2
            else max(rnum)/2+1 end 
            from 
(select row_number() over (order by lat_n desc) as rnum from station) t)




