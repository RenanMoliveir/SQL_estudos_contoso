USE ContosoRetailDW
--------------------------------------------------------------------------


--listar top 10 Produtos mais vendidos
SELECT TOP 10
	S.ProductKey,
	P.ProductName,	
	SUM(S.SalesQuantity) AS QTD_SOLD
FROM FactSales S
INNER JOIN DimProduct P ON P.ProductKey = S.ProductKey
GROUP BY S.ProductKey, P.ProductName
ORDER BY QTD_SOLD DESC

--------------------------------------------------------------------------


-- Total de vendas por mês
SELECT 
	DATEPART(YEAR,S.DateKey) AS ANO,
	DATEPART(MONTH,S.DateKey) AS MES,
	SUM(S.SalesQuantity) AS QTD_SOLD
FROM FactSales S
INNER JOIN DimDate D ON D.Datekey = S.DateKey
GROUP BY DATEPART(YEAR,S.DateKey),DATEPART(MONTH,S.DateKey)
HAVING DATEPART(YEAR,S.DateKey) = '2008'
ORDER BY ANO, MES 
-- A CONSULTA RETORNA A QUANTIDADE VENIDA MES A MES NO ANO DE 2008

--------------------------------------------------------------------------

-- TRAZER A MEDIA DE QUANTIDADE DE VENDAS NO MÊS DE 2008
WITH VENDAS_2008 (ANO, MES, QTD_SOLD) AS ( 
	SELECT 
		DATEPART(YEAR,S.DateKey) AS ANO,
		DATEPART(MONTH,S.DateKey) AS MES,
		SUM(S.SalesQuantity) AS QTD_SOLD
	FROM FactSales S
	INNER JOIN DimDate D ON D.Datekey = S.DateKey
	GROUP BY DATEPART(YEAR,S.DateKey),DATEPART(MONTH,S.DateKey)
	HAVING DATEPART(YEAR,S.DateKey) = '2008'
	 
)
SELECT
	MAX(S.QTD_SOLD) AS 'MAIOR QUANTIDADE',
	AVG(S.QTD_SOLD) AS 'MÉDIA 2008'
FROM VENDAS_2008 S
