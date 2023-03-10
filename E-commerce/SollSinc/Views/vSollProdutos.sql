CREATE VIEW V_SOLL_PRODUTOS AS
	SELECT DISTINCT P.PRODUTOID, P.codigocliente ISBN, ISNULL(P.DESCRICAO, '') TITULO,
		ISNULL(P.PRECOCOMPRA, 0) VALOR, ISNULL(A.QUANTIDADE, 0) QUANTIDADE, 
			CASE WHEN (P.LARGURA IS NULL OR P.LARGURA = 0) THEN '0'
			ELSE CAST(P.LARGURA AS VARCHAR(100))
			END AS LARGURA,
			CASE WHEN (P.ALTURA IS NULL OR P.ALTURA = 0) THEN '0'
			ELSE CAST(P.ALTURA AS VARCHAR(100))
			END AS ALTURA
		FROM PRODUTOS P, ALMOXLOJAITENS A,
		REGISTROS_SINCRONIZAR B
		WHERE P.PRODUTOID = A.PRODUTOID
			  AND P.PRODUTOID = B.PRODUTOID
			  AND A.ALMOXID = ?
			  AND P.dispid_fornecedor = ?
			  AND (P.CODIGOCLIENTE <> '' AND P.CODIGOCLIENTE <> '0')
			  AND B.DATAENTRADA >= (SELECT DATA_ULTIMA_SINCRONIZACAO FROM INTEGRACAO_ECOMMERCE WHERE INTEGRACAOID = 60) -- 60: Id do SollSinc