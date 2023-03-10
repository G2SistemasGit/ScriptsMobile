CREATE VIEW [dbo].[V_CLIENTES] AS
	SELECT * ,  descricao as busca, 
		LIMITECREDITO - ISNULL((SELECT SUM(VALOR - VALORPAGO) FROM V_CONTAS_A_RECEBER
	WHERE V_CONTAS_A_RECEBER.ENTIDADEID_CLIENTE = ENTIDADES.ENTIDADEID
	AND V_CONTAS_A_RECEBER.STATUS = '1'
	AND entidadeid_loja = ?), 0) AS LIMITEDISPONIVEL, 0.00 as LIMITEDISPONIVEL_mes
	FROM ENTIDADES
