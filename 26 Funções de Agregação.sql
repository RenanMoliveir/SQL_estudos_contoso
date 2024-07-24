
USE ContosoRetailDW
--SOMA
SELECT TOP 10
	SUM(SalesAmount) AS Soma
FROM FactSales

--MÉDIA
SELECT TOP 10
	AVG(SalesAmount) AS Media
FROM FactSales

--CONTAGEM
SELECT TOP 10
	COUNT(SalesAmount) AS CONTAGEM
FROM FactSales

--MÁXIMO
SELECT TOP 10
	MAX(SalesAmount) AS MÁXIMO
FROM FactSales

--MíNIMO
SELECT TOP 10
	MIN(SalesAmount) AS MÍNIMO
FROM FactSales