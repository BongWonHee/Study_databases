QUEST
- Table : Customers, Orders
- 조건 : CustomerName별로 주문 갯수 표시
- 연결 키는 각자 찾기
-- 출처 https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_columns



SELECT COUNT(*) AS CUS_ORD_CNT, CUS.CustomerName ,ORD.SHIPPERID
FROM Customers AS CUS
   INNER JOIN ORDERS AS ORD
   ON CUS.CustomerID = ORD.CustomerID
GROUP BY ORD.CustomerID;


RESULT
-- Number of Records: 74

-- CUS_ORD_CNT	CustomerName	ShipperID
-- 1	Ana Trujillo Emparedados y helados	3
-- 1	Antonio Moreno Taquería	2
-- 2	Around the Horn	1
-- 3	Berglunds snabbköp	2
-- 4	Blondel père et fils	1
-- 1	Bólido Comidas preparadas	2
-- 3	Bon app'	1
-- 4	Bottom-Dollar Marketse	2
-- 1	B's Beverages	3
-- 1	Centro comercial Moctezuma	3
-- 2	Chop-suey Chinese	2
-- 1	Comércio Mineiro	1
-- 1	Consolidated Holdings	2
-- 2	Drachenblut Delikatessend	3
-- 1	Du monde entier	3
-- 2	Eastern Connection	1
-- 10	Ernst Handel	1
-- 3	Familia Arquibaldo	3
-- 1	Folies gourmandes	1
-- 4	Folk och fä HB	3
-- 4	Frankenversand	1
-- 1	Franchi S.p.A.	1
-- 2	Furia Bacalhau e Frutos do Mar	3
-- 2	Galería del gastrónomo	2
-- 1	Godos Cocina Típica	2
-- 1	Gourmet Lanchonetes	3
-- 1	GROSELLA-Restaurante	3
-- 2	Hanari Carnes	2
-- 2	HILARIÓN-Abastos	3
-- 3	Hungry Coyote Import Store	2
-- 6	Hungry Owl All-Night Grocers	2
-- 3	Island Trading	2
-- 2	Königlich Essen	1
-- 5	La maison d'Asie	2
-- 3	Lehmanns Marktstand	2
-- 5	LILA-Supermercado	3
-- 1	LINO-Delicateses	1
-- 2	Lonesome Pine Restaurant	2
-- 3	Magazzini Alimentari Riuniti	1
-- 5	Mère Paillarde	2
-- 1	Morgenstern Gesundkost	3
-- 1	Océano Atlántico Ltda.	1
-- 4	Old World Delicatessen	1
-- 1	Ottilies Käseladen	2
-- 2	Pericles Comidas clásicas	3
-- 3	Piccolo und mehr	3
-- 3	Princesa Isabel Vinhoss	2
-- 4	Que Delícia	2
-- 2	Queen Cozinha	2
-- 7	QUICK-Stop	3
-- 7	Rattlesnake Canyon Grocery	3
-- 3	Reggiani Caseifici	1
-- 2	Ricardo Adocicados	3
-- 2	Richter Supermarkt	3
-- 3	Romero y tomillo	1
-- 1	Santé Gourmet	2
-- 4	Save-a-lot Markets	1
-- 3	Seven Seas Imports	3
-- 2	Simons bistro	3
-- 6	Split Rail Beer & Ale	2
-- 2	Suprêmes délices	2
-- 1	The Big Cheese	2
-- 1	Toms Spezialitäten	2
-- 4	Tortuga Restaurante	3
-- 2	Tradição Hipermercados	1
-- 2	Vaffeljernet	3
-- 2	Victuailles en stock	1
-- 2	Vins et alcools Chevalier	1
-- 4	Die Wandernde Kuh	2
-- 7	Wartian Herkku	3
-- 2	Wellington Importadora	2
-- 2	White Clover Markets	1
-- 1	Wilman Kala	3
-- 1	Wolski	3