CREATE VIEW [dbo].[V_SH_CATEGORIA] AS
	SELECT A.GRUPOID AS CATID, A.DESCRICAO AS DESCRICAO_CATEGORIA
	FROM PRODUTOS_GRUPOS A, PRODUTOS B, V_SH_PRODUTO_GRADE C
	WHERE A.GRUPOID = B.GRUPOID2
		  AND B.PRODUTOID = C.PRODUTOID
	GROUP BY A.GRUPOID, A.DESCRICAO

