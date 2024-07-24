

USE ContosoRetailDW
SELECT TOP 10	
	channelKey AS 'Cód da venda',
	s.ProductKey AS 'Cód.Produto',
	P.ProductName AS Produto
	
FROM FactSales AS S
FULL JOIN DimProduct AS P ON P.ProductName = P.ProductName