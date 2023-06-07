-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

UPDATE MEMBERS
SET AGE = 29
WHERE AGE IN (32,35) ;


SELECT *
FROM members
ORDER BY AGE ASC;