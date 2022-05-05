/* https://www.hackerrank.com/challenges/challenges/problem */

SELECT 
    H.HACKER_ID, 
    H.NAME, 
    COUNT(C.CHALLENGE_ID) as total_count
FROM HACKERS AS H
JOIN CHALLENGES AS C
    ON H.HACKER_ID = C.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
 
HAVING total_count = 
 (
    SELECT 
        COUNT(TEMP1.CHALLENGE_ID) as max_count
    FROM CHALLENGES TEMP1
    GROUP BY TEMP1.HACKER_ID
    ORDER BY max_count DESC
    LIMIT 1
)
OR total_count IN
 (
    SELECT DISTINCT other_counts 
    FROM (
        SELECT 
            H2.HACKER_ID, 
            H2.NAME, 
            COUNT(C2.CHALLENGE_ID) AS other_counts
        FROM HACKERS AS H2 
        JOIN CHALLENGES AS C2
            ON H2.HACKER_ID = C2.HACKER_ID
        GROUP BY 
            H2.HACKER_ID, 
            H2.NAME
    ) AS temp2
    GROUP BY other_counts
    HAVING COUNT(other_counts) =1
)
ORDER BY 
    total_count DESC, 
    H.HACKER_ID
;
