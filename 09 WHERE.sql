USE ContosoRetailDW

SELECT TOP 10 --WITH TIES -- Quantidade de dados que retorna. WITH TIES trás os dados que estão com os mesmos critérios, que se repetem--
	CustomerKey AS 'Código do Cleinte',	
	FirstName AS Nome,
	Gender AS Sexo,
	TotalChildren AS 'Quantidade de Filhos'

FROM DimCustomer
WHERE TotalChildren >= 5
	ORDER BY 4 DESC --Ordenar pela posição da coluna. Nesse caso a coluna de número 4--

	-- Notar que o WHERE foi usado para dar uma condição e foi usado o nome real da coluna, ou seja, com o álias do AS não funcionou--
	
