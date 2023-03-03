CREATE VIEW [dbo].[V_TR_CATEGORIAS_PAI] AS
	SELECT distinct (SELECT VALOR FROM CONFIGURACAO WHERE PARAMETRO = 31601) AS IDG2, TP.TIPOPROD, TP.DESCRICAO, 
		('1' + CAST((SELECT VALOR FROM CONFIGURACAO WHERE PARAMETRO = 31601) AS VARCHAR(5)) 
		+ CAST(TP.TIPOPROD AS VARCHAR(5))) AS TIPOPROD_TRAY,
		LOWER(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE( REPLACE(RTRIM(LTRIM(TP.DESCRICAO)), '&', '-'), ' ', '-'), '/', '-'), '---', '--'), '--', '-'), '(', ''), ')', ''), '.', ''), ',', '')) collate SQL_Latin1_General_Cp1251_CS_AS as slug
	FROM TIPOPRODUTO TP, PRODUTOS P , INTEGRACAO_ECOMMERCE_PRODUTOS IEP
	WHERE TP.TIPOPROD = P.TIPOPROD
		AND P.PRODUTOID = IEP.PRODUTOID
		AND TP.DESCRICAO IS NOT NULL 
		AND TP.DESCRICAO NOT LIKE ''
