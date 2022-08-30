/*

    https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

*/

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

