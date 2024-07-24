USE ContosoRetailDW

SELECT 
	CustomerKey AS 'Código do Cleinte',	
	FirstName AS Nome,
	Gender AS Sexo,
	MaritalStatus AS 'Estado civil',
	TotalChildren AS 'Quantidade de Filhos',
	NumberChildrenAtHome AS 'Filhos em casa',
	NumberCarsOwned AS 'Quantidade de carros'
	

FROM DimCustomer
WHERE Gender = 'M' 
	AND TotalChildren >0 
	AND NOT MaritalStatus = 'S'
	AND (TotalChildren =2 AND NumberChildrenAtHome =2)

ORDER BY 5
	

	