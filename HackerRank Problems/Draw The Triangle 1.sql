/* https://www.hackerrank.com/challenges/draw-the-triangle-1/problem */

DELIMITER $$
CREATE PROCEDURE DOWHILE(num INT)
BEGIN
    DECLARE CNT INT DEFAULT num;
    WHILE CNT > 0 DO
        SELECT REPEAT("* ", CNT);
        SET CNT = CNT - 1;
    END WHILE;
END$$
DELIMITER ;

CALL DOWHILE(20);

