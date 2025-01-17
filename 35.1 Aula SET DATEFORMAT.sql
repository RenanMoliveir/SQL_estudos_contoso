Use ContosoRetailDW

--FILTRANDO DATAS

SET DATEFORMAT YMD --A FUNÇÃO DEVE SER DELCARADA ANTES DO SELECT
SELECT DISTINCT
	S.DateKey
FROM FactSales S
WHERE S.DateKey BETWEEN '2009-01-01' AND '2009-12-31'

-- PARA FILTRAR DATAS É PRECISO O SET DATAFORMAT, QIE É UMA FUNÇÃO PARA FORMATAR DATAS
-- A FUNÇÃO, NESSE CASO, DEVE SER DECLARADA ANTES DO SELECT
-- USUALMENTE É ACONSELHAVEL UTILIZAR O FORMATO DAS DATAS COMO ESTÁ NO BANCO DE DADOS
-- DECLARAR O FORMATO QUE DEVE SER RETORNADO, POR EXEMPLO: YMD


/*FUNÇÃO GETDATE*/
-- FUNÇÃO QUE TRAS A DATA ATUAL
SELECT GETDATE() AS DATA_ATUAL
--UTILIZADO PARA ANÁLISES DE DIFERENÇA, CONTAGEM DE DIAS
--UTILIZAR FUNÇÕES DINAMICAS, COM A DATA ATUAL SEMPRE
/*POR EXEMPLO, É POSSÍVEL ADICIONAR OU SUBTRAIR DATAS PARA USAR EM CASOS 
ESPECÍFICOS. + DIAS OU - DIAS*/

SELECT GETDATE() + 10 AS DATA_ATUAL
--ADICIONANDO + 10 DIAS A DATA ATUAL

/*TAMBÉM É POSSÍVEL EXTRAIR APENAS A INFORMAÇÃO NECESSÁRIA DA DATA.
POR EXEMPLO, APENAS O ANO, DIA, MÊS OU HORA*/

SELECT YEAR(GETDATE()) AS ANO_ATUAL
-- SELECIONANDO O ANO ATUAL

SELECT MONTH(GETDATE()) AS MES_ATUAL
-- SELECIONANDO O MÊS ATUAL

SELECT DAY(GETDATE()) AS DIA_ATUAL
-- SELECIONANDO O DIA ATUAL

/*EXEMPLO: Filtrar vendas feitas apenas na data de 2009-08-30
na cláusula WHERE*/
SELECT
	S.DateKey
FROM FactOnlineSales S
WHERE YEAR(S.DateKey) = '2009' AND
MONTH(S.DateKey) = '08' AND
DAY(S.DateKey) = '30'
-- A CONSULTA RETORNOU 12.324 VENDAS NESSA DATA

/*Função DATEPART - usado para extrair parte da data
com essa função é possível retornar apenas parte dos valores contidos nas datas

Valor ||
-year
-quarter
-month
-dayofyear
-day
-week
-weekday
-houy
-minute
-second
*/

-- DATEPARTE(parte, day)
SELECT top 100
	S.DateKey,
	DATEPART(YEAR,S.DateKey) AS ANO
FROM FactOnlineSales S


/*CASO:listar todas as vendas,
incluindo o ano e o mês em que cada venda ocorreu.*/
SELECT TOP 100
	S.SalesKey,
	S.SalesAmount,
	DATEPART(YEAR,S.DateKey) AS ANO,
	DATEPART(MONTH,S.DateKey) AS MES,
	DATEPART(WEEKDAY,S.DateKey) AS DIA_DO_MES
FROM FactSales S
ORDER BY S.DateKey

/* FUNÇÃO DATENAME
TAMBÉM É POSSIVEL RETORNAR O NOME DOS DIAS E O MES 
É MUITO UTIL PARA A EXIBIÇÃO DOS DADOS*/

SELECT TOP 10
	S.SalesKey,
	S.SalesAmount,
	S.DateKey,
	DATEPART(YEAR,S.DateKey) AS ANO,
	DATEPART(MONTH,S.DateKey) AS MES,
	DATENAME(MONTH,S.DateKey) AS NOME_MES,
	DATENAME(WEEKDAY,S.DateKey) AS DIA_DA_SEMANA
FROM FactSales S
WHERE DATENAME(MONTH,S.DateKey) = 'Fevereiro'
