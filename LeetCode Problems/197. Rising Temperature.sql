# link   :  https://leetcode.com/problems/rising-temperature/description/?envType=study-plan&id=sql-i     
# author : Mohamed Ibrahim

select a1.id from Weather a1,Weather a2
where DATEDIFF(a1.recordDate,a2.recordDate) = 1
and a1.temperature > a2.temperature

