-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;
-- ORDER BY column1, column2, ... ASC|DESC;

select NAME, AGE
from members
where AGE IN (32, 28)
order by ADDRESS_CODE_ID desc;

select *
from members
where AGE between 25 and 35
ORDER BY GENDER_CODE_ID, AGE DESC;


select *
from members 
where GENDER_CODE_ID NOT like 'G-01';
-- WHERE GENDER_CODE_ID = 'G-01';

