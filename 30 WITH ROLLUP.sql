USE ContosoRetailDW

SELECT 
	G.ContinentName,
	ST.StoreName,
	SUM(S.SalesQuantity) AS QTD_Sales
FROM FactSales AS S
INNER JOIN DimStore AS ST ON ST.StoreKey = S.StoreKey
INNER JOIN DimGeography AS G ON G.GeographyKey = ST.GeographyKey -- trazendo a tabela geography
GROUP BY G.ContinentName ,ST.StoreName
WITH ROLLUP
-- o WITH ROLLUP agrupa uma classe de dados e faz a soma total desse grupo
-- No caso foi feito o agrupamento por ContinentName e somato o total