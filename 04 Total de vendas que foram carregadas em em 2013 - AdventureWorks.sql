
USE AdventureWorksDW2022

--Total de vendas que foram carregadas em em 2013
SELECT  
	SUM(S.SalesAmount) AS TOTAL_2013,
	D.CalendarYear
FROM FactInternetSales S
INNER JOIN DimDate D ON D.DateKey = S.ShipDateKey
GROUP BY D.CalendarYear
HAVING D.CalendarYear = '2013'


-- País que mais vendeu em 2013 
SELECT  
	D.CalendarYear,
	T.SalesTerritoryCountry,
	SUM(S.SalesAmount) AS TOTAL
FROM FactInternetSales S
INNER JOIN DimDate D ON D.DateKey = S.OrderDateKey
INNER JOIN DimSalesTerritory T ON T.SalesTerritoryKey = S.SalesTerritoryKey
GROUP BY D.CalendarYear, T.SalesTerritoryCountry
HAVING D.CalendarYear = '2013'
ORDER BY TOTAL DESC




