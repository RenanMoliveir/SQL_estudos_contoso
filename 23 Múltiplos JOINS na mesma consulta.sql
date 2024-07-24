USE ContosoRetailDW

SELECT TOP 5
	S.SalesKey AS 'Cód.Venda',
	S.SalesAmount AS 'QTDE',
	S.ProductKey AS 'Cód.Produto',
	P.ProductName AS Poduto,
	P.ProductSubcategoryKey AS Subcategoria,
	SC.ProductSubcategoryName AS Subcategoria,
	CT.ProductCategoryName AS 'Nome da categoria'
FROM FactSales AS S
INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
INNER JOIN DimProductSubcategory AS SC ON P.ProductSubcategoryKey = SC.ProductSubcategoryKey
INNER JOIN DimProductCategory AS CT ON CT.ProductCategoryKey = SC.ProductCategoryKey
--Fazer INNER JOIN dentro de OUTRO INNER JOIN
--Essa função é útil para acessar informações de tabelas filhas que não possuem
--relacionamento direto com a tabela fato.
-- Tomar cuidade com as chamadas dos campos durante as query do INNER JOIN
-- Sempre após executar o relacionamento das tabelas, através do JOIN, já é possível exibir as informações
-- disponíveis naquela tabela que foi acessada.
