
Use ContosoRetailDW

--Datas
SELECT DISTINCT
	S.DateKey
FROM FactSales S
WHERE S.DateKey BETWEEN '2009-01-01' AND '2009-12-31'

-- PARA FILTRAR DATAS É PRECISO O SET DATAFORMAT, QIE É UMA FUNÇÃO PARA FORMATAR DATAS
-- A FUNÇÃO, NESSE CASO, DEVE SER DECLARADA ANTES DO SELECT