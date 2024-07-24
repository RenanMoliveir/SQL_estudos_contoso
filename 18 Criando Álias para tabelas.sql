
USE ContosoRetailDW
SELECT TOP 10 
	S.SalesKey AS 'Código da Loja',
	S.channelKey,
	C.ChannelName AS 'Canal de Vendas',
	C.* 
	
FROM FactSales AS S --A partir de que se dá o apelido precisa mudar o nome em todas as chamadas
INNER JOIN DimChannel C ON S.channelKey = C.ChannelKey 
-- ÀLIAS 'C' DECLARADO EM SEGUIDA DO NOME DA TABELA
--OS APELIDOS SÃO UTILIZADO PARA FACILITAR A ESCRITA DAS QUERYS, POR EXEMPLO evitar palavras que se repetem demais
-- por exemplo Dim...Fact...