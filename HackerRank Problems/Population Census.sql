/*

    Link : https://www.hackerrank.com/challenges/asian-population/problem

*/

select sum(CITY.POPULATION) FROM CITY,COUNTRY WHERE CITY.CountryCode =COUNTRY.Code AND COUNTRY.CONTINENT ='Asia'

