
USE ContosoRetailDW

SELECT 
	AVG(UnitPrice)
FROM DimProduct

SELECT 
	ProductKey,
	UnitPrice
FROM DimProduct
WHERE UnitPrice <= (SELECT AVG(UnitPrice)FROM DimProduct)
ORDER BY UnitPrice DESC

