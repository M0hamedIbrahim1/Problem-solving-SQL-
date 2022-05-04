/******** Revising | *******/
select * from  CITY where POPULATION > 100000 AND COUNTRYCODE = 'USA' 
/******** Revising || *******/
select NAME from CITY WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA'
/******** Japanese Cities' Attributes *******/
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN'
/*********Weather Observation Station 3**********/
SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0 
/********Weather Observation Station 6 ***********/
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
/********Weather Observation Station 5 ***********/
select CITY , LENGTH(CITY) from STATION order by LENGTH(CITY) ASC,CITY LIMIT 1 ;
select  CITY , LENGTH(CITY) from STATION order by LENGTH(CITY) DESC LIMIT 1;
/*********Weather Observation Station 7**********/
SELECT DISTINCT city 
FROM   station 
WHERE  city LIKE '%a' 
OR     city LIKE '%e' 
OR     city LIKE '%i' 
OR     city LIKE '%o' 
OR     city LIKE '%u';
/********Weather Observation Station 8 ***********/
select distinct city from station where right(city, 1) in ('a','e','i','o','u') and left(city, 1) in ('a','e','i','o','u');
/********Weather Observation Station 9 ***********/
SELECT DISTINCT CITY FROM STATION WHERE NOT CITY LIKE '[aeiou]%'
/**********Weather Observation Station 10 *********/
SELECT DISTINCT CITY FROM STATION WHERE NOT CITY LIKE '%[aeiou]'
/**********Weather Observation Station 11 *********/
select DISTINCT CITY FROM STATION WHERE 
CITY NOT LIKE '[aoeiu]%'
or
CITY NOT LIKE '%[aoeiu]'
/**********Weather Observation Station 12 *********/
select DISTINCT CITY FROM STATION WHERE 
CITY NOT LIKE '[aoeiu]%'
AND
CITY NOT LIKE '%[aoeiu]'
/*****Higher Than 75 Marks****/
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME, 3), ID ASC;
/*******Employee Salaries************/
select name from Employee where salary > 2000 and months <10 order by employee_id
/********Type of Triangle*********/
select 
CASE
      when A+B>C AND B+C>A AND C+A>B THEN 
        case
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = C OR A = B OR C = B THEN 'Isosceles'
        WHEN A <> C AND A <> B AND C <> B THEN 'Scalene'
        END
ELSE 'Not A Triangle'
END
   
FROM TRIANGLES;

/*******************/









