USE ContosoRetailDW

SELECT 
	CustomerKey AS 'Código do Cleinte',	
	FirstName AS Nome,
	Gender AS Sexo,
	BirthDate AS 'Data de aniversário',
	MaritalStatus AS 'Estado civil',
	TotalChildren AS 'Quantidade de Filhos',
	NumberChildrenAtHome AS 'Filhos em casa',
	NumberCarsOwned AS 'Quantidade de carros'
	

FROM DimCustomer
WHERE MaritalStatus IS NOT NULL
	AND NOT TotalChildren BETWEEN 2 And 4
	AND NumberChildrenAtHome NOT IN (0,2,3,4)
	AND NOT BirthDate BETWEEN '1970-01-01' AND '1979-12-30'

ORDER BY TotalChildren DESC
