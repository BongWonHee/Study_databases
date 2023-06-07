SELECT COUNT(*),EmployeeID
FROM ORDERS
WHERE EmployeeID IN (7,9)
GROUP BY 	EmployeeID;

-- Table : Orders
-- 조건 : EmployeeID가 7, 9 직원에 각각 주문 갯수

-- Number of Records: 2
-- COUNT(*)	EmployeeID
-- 14	7
-- 6	9
-- 출처 https://www.w3schools.com/sql/trysql.asp?filename=trysql_is_null