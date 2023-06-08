
QUEST

- Table : Orders
- 조건 : 가장 많이 주문 받은 회사 직원명과 갯수


SELECT EMP.LASTNAME, EMP.FIRSTNAME, MAX(ORDET.Quantity)
FROM ((ORDERS AS ORD
INNER JOIN EMPLOYEES AS EMP
ON ORD.EmployeeID = EMP.EmployeeID)
INNER JOIN SHIPPERS AS SHIP
ON ORD.ShipperID = SHIP.ShipperID)
INNER JOIN OrderDetails AS ORDET
ON  ORD.OrderID = ORDET.OrderID;
-- ORDER BY ORDET.Quantity DESC LIMIT 1;

Number of Records: 1
LastName	FirstName	Quantity
Fuller	Andrew	120

--출처 https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_union