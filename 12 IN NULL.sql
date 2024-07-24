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
WHERE MaritalStatus IS NULL 
