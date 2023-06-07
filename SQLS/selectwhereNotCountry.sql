SELECT * 
FROM Customers
WHERE Country NOT LIKE 'USA' AND Country NOT LIKE 'GERMANY' ;

-- COUNTRY가 USA와 GERMANY가 아닌것
-- Number of Records: 67
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where 출처링크