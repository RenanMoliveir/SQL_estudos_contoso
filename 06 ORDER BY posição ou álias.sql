USE ContosoRetailDW

SELECT TOP 10 WITH TIES -- Quantidade de dados que retorna. EITH TIES trás os dados que estão com os mesmos critérios, que se repetem--
	CustomerKey AS 'Código do Cleinte',	
	FirstName AS Nome,
	Gender AS Sexo,
	TotalChildren AS 'Quantidade de Filhos'

FROM DimCustomer
	ORDER BY 4 DESC --Ordenar pela posição da coluna. Nesse caso a coluna de número 4--
