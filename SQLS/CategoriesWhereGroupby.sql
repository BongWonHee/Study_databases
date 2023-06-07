SELECT COUNT(*) AS MENU, LIST_OUT.CategoryName
FROM
(
SELECT INNER.* 
FROM Categories AS INNER
WHERE INNER.CategoryName IN ('Beverages','Produce')
) AS LIST_OUT
GROUP BY LIST_OUT.CategoryName;

-- - Table : Categories
-- - 조건 : CategoryName가 Produce, Beverages 제품에 갯수 각각 표시
-- - where 완료 후 가상 Table로 groupby 진행


--  출처 https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where