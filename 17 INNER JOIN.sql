

USE ContosoRetailDW
SELECT TOP 10 
	SalesKey AS 'Código da Loja',
	FactSales.channelKey,
	DimChannel.ChannelName AS 'Canal de Vendas',
	DimChannel.*  -- TRÁS TODAS AS COLUNAS DA TABELA
	
FROM FactSales
INNER JOIN DimChannel ON FactSales.channelKey = DimChannel.ChannelKey
-- INNER JOIN ON  retorna as colunas específicas que estão relacionadas
-- Combina valores de duas tabelas quando há valores correspondentes