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
WHERE MaritalStatus = 'M'
	AND TotalChildren BETWEEN 2 And 5
	AND BirthDate BETWEEN '1970-12-01' AND '1979-12-01'

ORDER BY BirthDate ASC
