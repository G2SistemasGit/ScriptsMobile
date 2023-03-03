CREATE VIEW [dbo].[V_SH_PRODUTOS_PRINCIPAL] AS
	SELECT A.CODFORN, MIN(PRODUTOID) AS PRODUTOID_PRINCIPAL 
	FROM LOCALIZADOR_GRADE A, PRODUTOS B
	WHERE A.CODFORN = B.CODFORN
	GROUP BY A.CODFORN
