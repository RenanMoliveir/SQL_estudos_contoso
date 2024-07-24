USE ContosoRetailDW


-- BUSCANDO NOMES QUE COMEÇAM COM KIRK
SELECT 
	FirstName + ' ' + LastName AS 'Nome completo',
*FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Kirk%'


-- BUSCANDO NOME COMPLETO
SELECT 
	FirstName + ' ' + LastName AS 'Nome completo',
*FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Kirk Nason'

 

-- BUSCANDO NOMES QUE contém KIRK
SELECT 
	FirstName + ' ' + LastName AS 'Nome completo',
*FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%Kirk%'


-- BUSCANDO NOMES QUE COMECAM KIRK
SELECT 
	FirstName + ' ' + LastName AS 'Nome completo',
*FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Kirk%'