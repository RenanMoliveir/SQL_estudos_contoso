
USE ContosoRetailDW

SELECT
	S.channelKey,
	S.PromotionKey,
	CH.ChannelName,
	SUM(S.SalesAmount) AS Soma,
	AVG(S.SalesAmount) AS Media,
	MAX(S.SalesAmount) AS Maximo,
	MIN(S.SalesAmount) AS Minimo,
	COUNT(S.SalesAmount) AS Contagem
FROM FactSales AS S
INNER JOIN DimChannel AS CH ON CH.ChannelKey = S.channelKey --Trazendo channel Name da DimChannel
--WHERE CH.ChannelName = 'Store'
GROUP BY S.channelKey, S.PromotionKey, CH.ChannelName
ORDER BY S.channelKey, S.PromotionKey-- Precisa declarar as colunas aqui para serem retornadas dentro do select
--GROUP BY serve para agrupar colunas que não fazem parte das funções de agregação, no caso acima sem o group by, a coluna
--S.channelKey não seria exibida
-- Decorar: SETECLT, FROM, WHERE GROUP BY, ORDER BY