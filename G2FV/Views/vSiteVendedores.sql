CREATE VIEW [dbo].[V_SITEVENDEDORES] AS
	SELECT distinct (SELECT VALOR FROM CONFIGURACAO WHERE PARAMETRO = 31601) AS IDG2, C.ENTIDADEID AS ENTIDADEID,
			  C.DESCRICAO AS NOME_VENDEDOR,
			  COUNT(DISTINCT A.CONTA) AS NPEDIDOS,  
			  SUM(A.VALORTOTALNOTA) AS TOTALFATURADO,
			  ROUND(SUM(A.VALORTOTALNOTA) / COUNT(DISTINCT A.CONTA), 2) AS TICKET_MEDIO,
			  20000.0 AS META,
			  1500.0 AS METADIARIA,
			  100*SUM(A.VALORTOTALNOTA) / 20000.0 AS PERC_ATINGIMENTO_META,
				   80.0 as POSITIVACAO,
			(select TOP 1 CONDICAOID from CLIENTE_CONDICAO WHERE ENTIDADEID_CLIENTE = C.ENTIDADEID) AS CONDICAOID_VENDEDOR,
		CASE 
			WHEN EXISTS(SELECT ENTIDADEID FROM V_VENDEDOR_DISTRIBUICAO
					      WHERE ENTIDADEID = C.ENTIDADEID) THEN '2'
			  ELSE '1' END AS TIPO_VENDEDOR,
			  (select top 1 ROTAID from v_SiteConsignacaoRotaVendedor WHERE ENTIDADEID_VENDEDOR = C.ENTIDADEID) AS ROTA_ATUAL_ID,
			  (select top 1 descricao from v_SiteConsignacaoRotaVendedor WHERE ENTIDADEID_VENDEDOR = C.ENTIDADEID) as ROTA_ATUAL_DESCRICAO,
		ISNULL(C.FUNDOCAIXA, 0.0) AS LIMITE_TOTAL_CONTA_CORRENTE,
       dbo.fnSaldoFundoCaixaAtual(C.ENTIDADEID, C.ENTIDADEID_LOJA) AS LIMITE_ATUAL_CONTA_CORRENTE
	FROM ENTIDADES C LEFT JOIN MOVIMENTO_DIA A ON A.ENTIDADEID_FUNC = C.ENTIDADEID AND A.DATAEMISSAO > '01/01/2021'
	AND (A.TIPO = '6' AND A.STATUS = '4')
	WHERE C.TIPO = 3
	GROUP BY A.ENTIDADEID_FUNC, c.entidadeid, C.DESCRICAO, C.FUNDOCAIXA, C.ENTIDADEID_LOJA
union
	SELECT distinct (SELECT VALOR FROM CONFIGURACAO WHERE PARAMETRO = 31601) AS IDG2, sup.entidadeid,
			  sup.DESCRICAO AS NOME_VENDEDOR,
			  COUNT(DISTINCT A.CONTA) AS NPEDIDOS,  
			  SUM(A.VALORTOTALNOTA) AS TOTALFATURADO,
			  ROUND(SUM(A.VALORTOTALNOTA) / COUNT(DISTINCT A.CONTA), 2) AS TICKET_MEDIO,
			  20000.0 AS META,
			  1500.0 AS METADIARIA,
			  100*SUM(A.VALORTOTALNOTA) / 20000.0 AS PERC_ATINGIMENTO_META,
			  80.0 as POSITIVACAO,
			  (select TOP 1 CONDICAOID from CLIENTE_CONDICAO WHERE ENTIDADEID_CLIENTE = sup.entidadeid) AS CONDICAOID_VENDEDOR,
		CASE 
			WHEN EXISTS(SELECT ENTIDADEID FROM V_VENDEDOR_DISTRIBUICAO
					      WHERE ENTIDADEID = SUP.ENTIDADEID) THEN '2'
			  ELSE '1' END AS TIPO_VENDEDOR,
		(select top 1 ROTAID from v_SiteConsignacaoRotaVendedor WHERE ENTIDADEID_VENDEDOR = SUP.ENTIDADEID) AS ROTA_ATUAL_ID,
		(select top 1 descricao from v_SiteConsignacaoRotaVendedor WHERE ENTIDADEID_VENDEDOR = SUP.ENTIDADEID) as ROTA_ATUAL_DESCRICAO,
		ISNULL(SUP.FUNDOCAIXA, 0.0) AS LIMITE_TOTAL_CONTA_CORRENTE,
       dbo.fnSaldoFundoCaixaAtual(SUP.ENTIDADEID, SUP.ENTIDADEID_LOJA) AS LIMITE_ATUAL_CONTA_CORRENTE
	FROM entidades SUP, ENTIDADES C LEFT JOIN MOVIMENTO_DIA A ON A.ENTIDADEID_FUNC = C.ENTIDADEID AND A.TIPO = '6' AND A.STATUS = '4'
	AND A.DATAEMISSAO > '01/01/2021'
	WHERE c.entidadeid_vendedor = sup.entidadeid
	GROUP BY sup.entidadeid,  sup.DESCRICAO, SUP.FUNDOCAIXA, SUP.ENTIDADEID_LOJA