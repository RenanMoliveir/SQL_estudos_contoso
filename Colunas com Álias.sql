USE ContosoRetailDW


SELECT
	StoreKey AS codigo,
	StoreName AS Nome,
	StoreManager AS 'Nome do Gerente'

FROM DimStore