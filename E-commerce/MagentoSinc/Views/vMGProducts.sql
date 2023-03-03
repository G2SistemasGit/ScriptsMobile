CREATE VIEW [dbo].[V_MG_PRODUCTS] AS
	SELECT DISTINCT P.PRODUTOID SKU, ISNULL(P.DESCRICAO_ECOMMERCE, P.DESCRICAO) NAME, TPI.PRECOVENDA PRICE, 
		CASE WHEN (P.COMPRIMENTO IS NULL OR P.COMPRIMENTO = 0) THEN '0'
		ELSE CAST(P.COMPRIMENTO AS VARCHAR(100))
		END AS CORREIOS_DEPTH,
		CASE WHEN (P.LARGURA IS NULL OR P.LARGURA = 0) THEN '0'
		ELSE CAST(P.LARGURA AS VARCHAR(100))
		END AS CORREIOS_WIDTH,
		CASE WHEN (P.ALTURA IS NULL OR P.ALTURA = 0) THEN '0'
		ELSE CAST(P.ALTURA AS VARCHAR(100))
		END AS CORREIOS_HEIGHT,
		P.PESO weight, 
		ISNULL(CAST(P.CARACTERISTICA2 AS VARCHAR(MAX)), '') DESCRIPTION,
		'' SHORT_DESCRIPTION,
		P.DESCRICAO META_TITLE, P.DESCRICAO META_KEYWORD, '' META_DESCRIPTION, 
		TP.TIPOPROD CATEGORIAID, TP.DESCRICAO CATEGORIA,
		TPF.TIPOPROD_FILHO CATEGORIAID_FILHO, TPF.DESCRICAO CATEGORIA_FILHO,
		A.QUANTIDADE STOCK, ISNULL(A.QTMINIMA, 0) MINIMUM_STOCK,
		CASE WHEN (A.QUANTIDADE <= ISNULL(A.QTMINIMA, 0) AND ISNULL(A.QTMINIMA, 0) > 0) THEN 0
		ELSE 1
		END AS STATUS,
		LOWER(REPLACE(REPLACE(TP.DESCRICAO, ' ', '-'), '/', '')) collate SQL_Latin1_General_Cp1251_CS_AS as url_key,
		CASE WHEN (LOWER(REPLACE(REPLACE(TPF.DESCRICAO, ' ', '-'), '/', '')) IS NULL) THEN ''
			ELSE LOWER(REPLACE(REPLACE(TP.DESCRICAO, ' ', '-'), '/', '')) + '-' + LOWER(REPLACE(REPLACE(TPF.DESCRICAO, ' ', '-'), '/', '')) collate SQL_Latin1_General_Cp1251_CS_AS
			END AS url_key_child
	FROM TABPRECOITEM TPI, TIPOPRODUTO TP, ALMOXLOJAITENS A, REGISTROS_SINCRONIZAR B, INTEGRACAO_ECOMMERCE_PRODUTOS IEC, PRODUTOS P
	LEFT JOIN TIPOPRODUTO_FILHO TPF ON (P.TIPOPROD = TPF.TIPOPROD AND P.TIPOPRODID_FILHO = TPF.TIPOPROD_FILHO)
	WHERE P.TIPOPROD = TP.TIPOPROD
		  AND P.PRODUTOID = IEC.PRODUTOID
		  AND P.PRODUTOID = TPI.PRODUTOID
		  AND P.PRODUTOID = A.PRODUTOID
		  AND P.PRODUTOID = B.PRODUTOID
		  AND A.ALMOXID = ?
		  AND IEC.INTEGRACAOID = 40 -- 40: Id do MagentoSinc
		  AND B.DATAENTRADA >= (SELECT DATA_ULTIMA_SINCRONIZACAO FROM INTEGRACAO_ECOMMERCE WHERE INTEGRACAOID = 40) -- 40: Id do MagentoSinc
		  AND TPI.TABPRECOID = ?
		  AND IEC.ALMOXID = A.ALMOXID
