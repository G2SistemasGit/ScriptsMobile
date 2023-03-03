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
	[USUARIO] [varchar](60) NULL,
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
	[TIPOSERVID] [int] NULL,
	[ACESSORIOS] [text] NULL,
	[EQPO] [varchar](80) NULL,
	[ENTIDADEID_FORN] [int] NULL,
	[TAXASERVICO] [float] NULL,
	[PEDCLIENTE] [varchar](20) NULL,
	[EQUIPAMENTOS] [text] NULL,
	[VALIDADE] [datetime] NULL,
	[CONDICAOID] [int] NULL,
	[ACRESCIMOFINANCEIRO] [float] NULL,
	[FORMAPAGID] [int] NULL,
	[ALIQISS] [float] NULL,
	[ALIQIR] [float] NULL,
	[ALIQCSLL] [float] NULL,
	[ALIQPIS] [float] NULL,
	[ALIQCOFINS] [float] NULL,
	[RETERISS] [varchar](1) NULL,
	[RETERIR] [varchar](1) NULL,
	[LIBERADO] [varchar](15) NULL,
	[LIBERADOPOR] [varchar](20) NULL,
	[LIBERADODATA] [datetime] NULL,
	[RETERCSLL] [varchar](1) NULL,
	[RETERPIS] [varchar](1) NULL,
	[RETERCOFINS] [varchar](1) NULL,
	[ENTIDADEID_FUNC2] [int] NULL,
	[IMPRESSO] [int] NULL,
	[DATA_IMPRESSO] [datetime] NULL,
	[USUARIO_IMPRESSO] [varchar](20) NULL,
	[VALORIPI] [float] NULL,
	[FISCO] [text] NULL,
	[datafinalizacao] [datetime] NULL,
	[NUMFORMULARIO_FIM] [varchar](20) NULL,
	[NUMSELO_FIM] [varchar](20) NULL,
	[DATAFECHAMENTO] [datetime] NULL,
	[RETERINSS] [varchar](1) NULL,
	[ALIQINSS] [float] NULL,
	[STATUS_CONF] [varchar](1) NULL,
	[VALORII] [float] NULL,
	[UF_EX] [varchar](2) NULL,
	[LOCAL_EX] [varchar](50) NULL,
	[ENTIDADEID_PARCEIRO] [int] NULL,
	[ENTIDADEID_FUNC_FECHAMENTO] [int] NULL,
	[DATA_EXECUCAO] [datetime] NULL,
	[COR] [varchar](20) NULL,
	[DATA_CIRURGIA] [datetime] NULL,
	[MEDICO_ID] [int] NULL,
	[PACIENTE] [varchar](40) NULL,
	[HOSPITALID] [int] NULL,
	[CONVENIOID] [int] NULL,
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
	[KM] [float] NULL,
	[DT_ENTREGA_PREV] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [CPFCUPOM] [varchar](20) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [valoricms_ufdestino] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [valoricms_uforigem] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [valorfpc_ufdestino] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [DATA_TROCA_KM_ANTERIOR] [datetime] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [DATACRIACAO] [datetime] NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [MOTOR] [varchar](40) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [CAMBIO] [varchar](40) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [ID_TRACAO] [int] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [ID_CAMBIO] [int] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [ID_MOTOR] [int] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [ID_COMBUSTIVEL] [int] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [ID_CORES] [int] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [MODELO] [varchar](10) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [ID_LEITURA] [int] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [TOTAL_ICMS_UF_Dest] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [TOTAL_ICMS_UF_Rem] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [TOTAL_FCP_UF_Dest] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [TOTAL_FCP] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [TOTAL_FCP_ST] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [TOTAL_FCP_ST_RET] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [TOTAL_IPI_DEVOL] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [RETERRIR] [varchar](1) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [CORID] [int] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [LOCAL_ENTREGA] [varchar](100) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [STATUS_MFE] [varchar](1) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [STATUS_CANC] [varchar](1) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [DATA_SAIDA] [datetime] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [VAL_ISS] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [VAL_ISSRETIDO] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [VALORTOTALSERV] [float] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [NUMCAIXAPDV] [int] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [JUSTIFICATIVA_CANCELAMENTO] [varchar](60) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [DIAGNOSTICO_FIM] [datetime] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [DIAGNOSTICO_INICIO] [datetime] NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [MOTIVO_PARADA] [varchar](255) NULL
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD [IPI_BCICMS] [varchar](1) NULL
/****** Object:  Index [PK__MOVIMENTO_DIA__4C6B5938]    Script Date: 10/08/2019 14:11:12 ******/
ALTER TABLE [dbo].[MOVIMENTO_DIA] ADD PRIMARY KEY CLUSTERED 
(
	[CONTA] ASC,
	[ENTIDADEID_LOJA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[MOVIMENTO_DIA]  WITH CHECK ADD FOREIGN KEY([ENTIDADEID_LOJA], [ALMOXID])
REFERENCES [dbo].[ALMOXLOJA] ([ENTIDADEID_LOJA], [ALMOXID])
GO

ALTER TABLE [dbo].[MOVIMENTO_DIA]  WITH CHECK ADD  CONSTRAINT [FK_MOVIMENTO_TABPRECO] FOREIGN KEY([TABPRECOID])
REFERENCES [dbo].[TABPRECO] ([TABPRECOID])
GO

ALTER TABLE [dbo].[MOVIMENTO_DIA] CHECK CONSTRAINT [FK_MOVIMENTO_TABPRECO]
GO

ALTER TABLE [dbo].[MOVIMENTO_DIA]  WITH CHECK ADD  CONSTRAINT [FK_VEIC_MARCA_MOV] FOREIGN KEY([ID_MARCA])
REFERENCES [dbo].[MARCA_VEICULO] ([ID_MARCA])
GO

ALTER TABLE [dbo].[MOVIMENTO_DIA] CHECK CONSTRAINT [FK_VEIC_MARCA_MOV]
GO

ALTER TABLE [dbo].[MOVIMENTO_DIA]  WITH CHECK ADD  CONSTRAINT [FK_VEIC_MODELO_MOV] FOREIGN KEY([ID_MODELO])
REFERENCES [dbo].[MODELO_VEICULO] ([ID_MODELO])
GO

ALTER TABLE [dbo].[MOVIMENTO_DIA] CHECK CONSTRAINT [FK_VEIC_MODELO_MOV]
GO

