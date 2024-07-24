USE ContosoRetailDW

SELECT 
	S.ProductKey,
	SUM(S.SalesQuantity) AS QTD_Sales
FROM FactSales AS S
WHERE S.DateKey >= '2009-01-01'
GROUP BY S.ProductKey
HAVING
	SUM(S.SalesQuantity) BETWEEN 1000 AND 1600
ORDER BY QTD_Sales
--HAVING é o filtro de valores agrupados com funções e group by
