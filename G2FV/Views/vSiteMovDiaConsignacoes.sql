CREATE VIEW [dbo].[v_SiteMovDiaConsignacoes] AS
	Select (SELECT VALOR FROM CONFIGURACAO WHERE PARAMETRO = 31601) as idg2, 
					MD.NUMDOCUMENTO, MD.CONTA, MD.ENTIDADEID_LOJA, MD.ALMOXID,
					MD.DATAEMISSAO, MD.FORMAPAGID, MD.CONDICAOID, MD.STATUS, '' AS OBS, 
					MD.ENTIDADEID_CLIENTE, MD.ENTIDADEID_FUNC, MD.TABPRECOID, MD.TIPO, 
					MD.DATASAIDA, MD.COMISSAO, MD.desconto, MD.valortotalprod, MD.valorfrete,
					MD.valortotalnota, MD.valdesconto, MD.status_separacao, MD.prazo,
					CLI.DESCRICAO AS CLIENTEDESCRICAO, 
					ISNULL((SELECT SUM(VALOR) FROM FATURAS_DIA WHERE CONTA = MD.CONTA 
						AND ENTIDADEID_LOJA = MD.ENTIDADEID_LOJA AND STATUS = '2'), 0) as VALOR_ADIANTAMENTO
				FROM    Entidades CLI, v_SiteConsignacaoRotaVendedor RV, v_SiteEquipesVendaConsignacao EVC, MOVIMENTO_DIA MD
				WHERE   MD.ENTIDADEID_CLIENTE = CLI.ENTIDADEID
					AND MD.STATUS = '4'  
					AND MD.tipo = '6'	
					AND MD.ENTIDADEID_FUNC = EVC.ENTIDADEID_VENDEDOR   
					AND UPPER(RV.STATUS) = 'S'
					AND MD.ENTIDADEID_CLIENTE = RV.ENTIDADEID_CLIENTE   
				GROUP BY MD.NUMDOCUMENTO, MD.CONTA, MD.ENTIDADEID_LOJA, MD.DATAEMISSAO, MD.FORMAPAGID, MD.CONDICAOID,   
					MD.STATUS, MD.ENTIDADEID_CLIENTE, MD.TABPRECOID, MD.ENTIDADEID_FUNC, CLI.DESCRICAO, MD.ALMOXID,
					MD.TIPO, MD.DATASAIDA, MD.COMISSAO, MD.desconto, MD.valortotalprod, MD.valorfrete, MD.valortotalnota,
					MD.valdesconto, MD.status_separacao, MD.prazo, MD.formapagid, MD.condicaoid