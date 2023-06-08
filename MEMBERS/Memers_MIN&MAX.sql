-- SELECT MIN(column_name)
-- FROM table_name
-- WHERE condition;

-- 성별 당 COUNT는 각각 몇명인가?




SELECT COUNT(*), GENDER_CODE_ID -- group by 한 것에 대한 종류를 볼때 사용한다.
FROM MEMBERS 
GROUP BY GENDER_CODE_ID ;

SELECT COUNT(MEMBERS_ID)
FROM MEMBERS 
WHERE gender_code_ID = 'G-04'
GROUP BY MEMBERS_ID;


SELECT *
FROM members;