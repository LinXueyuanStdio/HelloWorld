CREATE DATABASE HelloWorld;
USE HelloWorld;

DELIMITER |
CREATE PROCEDURE HelloWorld()
BEGIN
    WHILE 'HelloWorld' = 'HelloWorld' DO
        SELECT REPEAT("HelloWorld",RAND()*100) AS HelloWorld;
    END WHILE;
END|
DELIMITER ;

CALL HelloWorld();