
--DECLARANDO VARIAVEIS

DECLARE @USUARIO VARCHAR(30);
SET @USUARIO = 'RENAN';

SELECT @USUARIO AS NAME


USE ContosoRetailDW

DECLARE @PROD INT

SELECT TOP 10 *
FROM FactOnlineSales