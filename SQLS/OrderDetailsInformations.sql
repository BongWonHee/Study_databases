

QUEST
- Table : OrderDetails
- 조건 : 제품명,가격, 주문 갯수, 고객명 표시
--출처 https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_union

SELECT  JOIN_ORD.ProductName, JOIN_ORD.Price, JOIN_ORD.Quantity, CUS.CustomerName
FROM(( OrderDetails AS ORDT
INNER JOIN Products AS PRO
ON ORDT.ProductID = PRO.ProductID) AS JOIN_T
INNER JOIN Orders AS ORD
ON ORD.OrderID = JOIN_T.OrderID ) AS JOIN_ORD
INNER JOIN Customers AS CUS
ON JOIN_ORD.CustomerID = CUS.CustomerID



Result:
Number of Records: 518