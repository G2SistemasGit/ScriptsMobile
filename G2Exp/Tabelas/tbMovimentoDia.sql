CREATE TABLE [dbo].[MOVIMENTO_DIA](
	[CONTA] [int] NOT NULL,
	[ENTIDADEID_LOJA] [int] NOT NULL,
	[CFOP] [varchar](7) NULL,
	[ALMOXID] [int] NOT NULL,
	[NUMDOCUMENTO] [int] NULL,
	[STATUS] [varchar](1) NOT NULL,
	[TIPO] [varchar](1) NULL,
	[DATAEMISSAO] [datetime] NULL,
	[DATASAIDA] [datetime] NULL,
	[COMISSAO] [float] NULL,
	[ENTIDADEID_CLIENTE] [int] NULL,
	[ENTIDADEID_FUNC] [int] NULL,
	[NOME_IDENTIFICADOR] [varchar](40) NULL,
	[CONTAORIGEM] [int] NULL,
	[DESCONTO] [float] NULL,
	[BASECALCICMS] [float] NULL,
	[VALORICMS] [float] NULL,
	[BASECALCICMSSUB] [float] NULL,
	[VALORICMSSUB] [float] NULL,
	[VALORTOTALPROD] [float] NULL,
	[VALORFRETE] [float] NULL,
	[VALORSEGURO] [float] NULL,
	[OUTRASDESPESAS] [float] NULL,
	[VALORTOTALNOTA] [float] NULL,
	[ENTIDADEID_TRANSP] [int] NULL,
	[FRETE] [varchar](1) NULL,
	[PLACA] [varchar](8) NULL,
	[PLACA_UF] [varchar](2) NULL,
	[QUANTIDADE] [varchar](10) NULL,
	[ESPECIE] [varchar](20) NULL,
	[MARCA] [varchar](10) NULL,
	[NUMERO] [varchar](10) NULL,
	[PESOBRUTO] [float] NULL,
	[PESOLIQUIDO] [float] NULL,
	[SERIESELO] [varchar](10) NULL,
	[NUMFORMULARIO] [varchar](20) NULL,
	[NUMSELO] [varchar](20) NULL,
	[Obs] [text] NULL,
	[NUMECF] [varchar](20) NULL,
	[USUARIO] [varchar](14) NULL,
	[PRAZO] [varchar](72) NULL,
	[VALDESCONTO] [float] NULL,
	[TROCAID] [int] NULL,
	[TROCAVALOR] [float] NULL,
	[EQUIPAMENTO] [text] NULL,
	[DEFEITOS] [text] NULL,
	[SERVICOEXECUTADO] [text] NULL,
	[NUMSERIE_EQPO] [varchar](20) NULL,
	[NUMNOTA_COMPRA] [varchar](20) NULL,
	[DATA_COMPRA] [datetime] NULL,
	[GARANTIA] [varchar](1) NULL,
	[ENTIDADEID_TECNICO] [int] NULL,
	[EQUIPAMENTOS] [text] NULL,
	[TIPOSERVID] [int] NULL,
	[ACESSORIOS] [text] NULL,
	[EQPO] [varchar](80) NULL,
	[ENTIDADEID_FORN] [int] NULL,
	[TAXASERVICO] [float] NULL,
	[PEDCLIENTE] [varchar](20) NULL,
	[FORMAPAGID] [int] NULL,
	[CONDICAOID] [int] NULL,
	[ACRESCIMOFINANCEIRO] [float] NULL,
	[RETERISS] [varchar](1) NULL,
	[RETERIR] [varchar](1) NULL,
	[LIBERADO] [varchar](10) NULL,
	[LIBERADOPOR] [varchar](20) NULL,
	[LIBERADODATA] [datetime] NULL,
	[FISCO] [text] NULL,
	[RETERCSLL] [varchar](1) NULL,
	[RETERPIS] [varchar](1) NULL,
	[RETERCOFINS] [varchar](1) NULL,
	[ENTIDADEID_FUNC2] [int] NULL,
	[DATAFINALIZACAO] [datetime] NULL,
	[VALIDADE] [datetime] NULL,
	[ALIQISS] [float] NULL,
	[ALIQIR] [float] NULL,
	[ALIQCSLL] [float] NULL,
	[ALIQPIS] [float] NULL,
	[ALIQCOFINS] [float] NULL,
	[RETERRIR] [varchar](1) NULL,
	[IMPRESSO] [int] NULL,
	[DATA_IMPRESSO] [datetime] NULL,
	[USUARIO_IMPRESSO] [varchar](20) NULL,
	[VALORIPI] [float] NULL,
	[NUMFORMULARIO_FIM] [varchar](20) NULL,
	[NUMSELO_FIM] [varchar](20) NULL,
	[DATAFECHAMENTO] [datetime] NULL,
	[RETERINSS] [varchar](1) NULL,
	[ALIQINSS] [float] NULL,
	[VALORII] [float] NULL,
	[STATUS_CONF] [varchar](1) NULL,
	[UF_EX] [varchar](2) NULL,
	[LOCAL_EX] [varchar](50) NULL,
	[ENTIDADEID_PARCEIRO] [int] NULL,
	[ENTIDADEID_FUNC_FECHAMENTO] [int] NULL,
	[DATA_EXECUCAO] [datetime] NULL,
	[COR] [varchar](20) NULL,
	[HOSPITALID] [int] NULL,
	[CONVENIOID] [int] NULL,
	[PACIENTE] [varchar](40) NULL,
	[DATA_CIRURGIA] [datetime] NULL,
	[MEDICO_ID] [int] NULL,
	[VALORFRETE2] [float] NULL,
	[ENTIDADEID_LOJA_ORIGEM] [int] NULL,
	[TABPRECOID] [varchar](10) NULL,
	[PRAZOENTREGA] [varchar](20) NULL,
	[VALIDADE2] [varchar](20) NULL,
	[CONTATOID] [int] NULL,
	[ID_MARCA] [int] NULL,
	[ID_MODELO] [int] NULL,
	[CHASSI] [varchar](40) NULL,
	[ANO] [varchar](10) NULL,
	[TIPOCOMBUSTIVEL] [varchar](30) NULL,
	[DT_ENTREGA_PREV] [datetime] NULL,
	[KM] [float] NULL,
	[CORID] [int] NULL,
	[CPFCUPOM] [varchar](20) NULL,
	[LOCAL_ENTREGA] [varchar](100) NULL,
	[valoricms_ufdestino] [float] NULL,
	[valoricms_uforigem] [float] NULL,
	[valorfpc_ufdestino] [float] NULL,
	[DATA_TROCA_KM_ANTERIOR] [datetime] NULL,
	[DATACRIACAO] [datetime] NULL,
	[MOTOR] [varchar](40) NULL,
	[CAMBIO] [varchar](40) NULL,
	[ID_TRACAO] [int] NULL,
	[ID_CAMBIO] [int] NULL,
	[ID_MOTOR] [int] NULL,
	[ID_COMBUSTIVEL] [int] NULL,
	[ID_CORES] [int] NULL,
	[MODELO] [varchar](10) NULL,
	[ID_LEITURA] [int] NULL,
	[STATUS_MFE] [varchar](1) NULL,
	[STATUS_CANC] [varchar](1) NULL,
	[TOTAL_FCP_ST] [float] NULL,
	[TOTAL_FCP_ST_RET] [float] NULL,
	[TOTAL_IPI_DEVOL] [float] NULL,
	[TOTAL_FCP] [float] NULL,
	[TOTAL_ICMS_UF_DEST] [float] NULL,
	[TOTAL_ICMS_UF_REM] [float] NULL,
	[TOTAL_FCP_UF_DEST] [float] NULL,
	[DATA_SAIDA] [datetime] NULL,
	[VAL_ISS] [float] NULL,
	[VAL_ISSRETIDO] [float] NULL,
	[VALORTOTALSERV] [float] NULL,
	[NUMCAIXAPDV] [int] NULL,
	[JUSTIFICATIVA_CANCELAMENTO] [varchar](60) NULL,
	[DIAGNOSTICO_FIM] [datetime] NULL,
	[DIAGNOSTICO_INICIO] [datetime] NULL,
	[MOTIVO_PARADA] [varchar](255) NULL,
	[IPI_BCICMS] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CONTA] ASC,
	[ENTIDADEID_LOJA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[MOVIMENTO_DIA]  WITH CHECK ADD FOREIGN KEY([CFOP])
REFERENCES [dbo].[OPERACOESFISCAIS] ([CFOP])
GO

ALTER TABLE [dbo].[MOVIMENTO_DIA]  WITH CHECK ADD FOREIGN KEY([ENTIDADEID_LOJA], [ALMOXID])
REFERENCES [dbo].[ALMOXLOJA] ([ENTIDADEID_LOJA], [ALMOXID])
GO

