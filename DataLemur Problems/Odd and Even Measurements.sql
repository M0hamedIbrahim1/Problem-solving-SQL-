/*

    link   : https://datalemur.com/questions/odd-even-measurements
    author : Mohamed Ibrahim
    
*/



SELECT CAST(measurement_time AS DATE) as measurement_day ,
SUM(CASE WHEN row_num % 2 != 0 THEN measurement_value ELSE 0 END) AS odd_sum,
SUM(CASE WHEN row_num % 2 = 0 THEN measurement_value ELSE 0 END) AS even_sum


FROM (

    SELECT measurement_time,measurement_value,
    row_number()OVER(PARTITION BY date(measurement_time) ORDER BY measurement_time) as row_num
    FROM measurements
) df
GROUP BY CAST(measurement_time AS DATE)
ORDER by measurement_day


