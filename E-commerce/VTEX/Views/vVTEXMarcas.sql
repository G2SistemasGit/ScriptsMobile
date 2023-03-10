CREATE VIEW V_VTEX_MARCAS AS
	SELECT (SELECT VALOR FROM CONFIGURACAO WHERE PARAMETRO = 31601) AS IDG2, 
		('1' + CAST((SELECT VALOR FROM CONFIGURACAO WHERE PARAMETRO = 31601) AS VARCHAR(5)) + CAST(ENTIDADEID AS VARCHAR(10))) AS MARCAID_VTEX,
		DESCRICAO2 NAME,
		DESCRICAO2 TEXT,
		DESCRICAO2 SITE_TITLE,
		CASE WHEN (ATIVO = 'S' OR ATIVO = 's') THEN 1
			 ELSE 0
		END AS ISACTIVE,
		'1' MENU_HOME
	FROM ENTIDADES 
	WHERE ENTIDADEID IN (SELECT ENTIDADEID_FORNECEDOR 
						 FROM PRODUTOS
						 WHERE TIPOPROD > 100?
						 AND PRODUTOID IN (SELECT PRODUTOID FROM INTEGRACAO_ECOMMERCE_PRODUTOS))