-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;
-- ORDER BY column1, column2, ... ASC|DESC;

select *
from members 
where TELEPHONE like '%'|| '0-'||'%';

