USE ContosoRetailDW

SELECT TOP 10
	S.StoreKey,
	ST.StoreName,
	PM.PromotionName,
	SUM(S.SalesQuantity) AS QTD_Sales
FROM FactSales AS S
INNER JOIN DimStore AS ST ON ST.StoreKey = S.StoreKey
INNER JOIN DimPromotion AS PM ON PM.PromotionKey = S.PromotionKey
GROUP BY S.StoreKey, ST.StoreName, PM.PromotionName


-- Trazer a quantida de vendas por clientes
