QUEST
-- - Table : Products
-- - 조건 : CategoryID 가 10개 이상

SELECT count(CATERGORY.CategoryID) AS CATEGORYID_LIST, CATERGORY.CategoryID
FROM Products AS CATERGORY
GROUP by CATERGORY.CategoryID
HAVING count(CATERGORY.categoryid) >=10 ;

RESULT
CATEGORYID_LIST	CategoryID
12	1
12	2
13	3
10	4
12	8

