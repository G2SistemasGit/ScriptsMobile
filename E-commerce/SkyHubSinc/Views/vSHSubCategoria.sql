CREATE VIEW [dbo].[V_SH_SUB_CATEGORIA] AS
	SELECT A.CATEGORIAID AS SUBCATID, A.DESCRICAO AS DESCRICAO_SUBCATEGORIA, B.GRUPOID2 AS CATID
	FROM PRODUTOS_CATEGORIA A, PRODUTOS B, V_SH_PRODUTO_GRADE C
	WHERE A.CATEGORIAID = B.CATEGORIAID
		  AND B.PRODUTOID = C.PRODUTOID
	GROUP BY A.CATEGORIAID, A.DESCRICAO, B.GRUPOID2