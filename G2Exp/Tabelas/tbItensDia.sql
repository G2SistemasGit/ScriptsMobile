CREATE TABLE [dbo].[ITENS_DIA](
	[ENTIDADEID_LOJA] [int] NOT NULL,
	[ALMOXID] [int] NOT NULL,
	[CONTA] [int] NOT NULL,
	[ITEM] [int] NOT NULL,
	[OPERADOR] [varchar](14) NOT NULL,
	[DATA] [datetime] NOT NULL,
	[PRECO] [float] NOT NULL,
	[QUANTIDADE] [float] NULL,
	[PRODUTOID] [int] NOT NULL,
	[DESCONTO] [float] NULL,
	[ICMS] [float] NULL,
	[GARANTIA] [datetime] NULL,
	[IPI] [float] NULL,
	[USAUND2] [varchar](1) NULL,
	[COMISSAO] [float] NULL,
	[ALIQREDUTORA] [float] NULL,
	[PRECOCOMPRA] [float] NULL,
	[PRECO_TABELA] [float] NULL,
	[PIS] [float] NULL,
	[COFINS] [float] NULL,
	[IMPOSTO_PISCOFINS] [int] NULL,
	[ADICIONAL_SUB] [float] NULL,
	[DESCSERVICO] [text] NULL,
	[LIBERAPRECO] [varchar](1) NULL,
	[LIBERADOPOR] [varchar](20) NULL,
	[DATALIBERADO] [datetime] NULL,
	[CFOP] [varchar](7) NULL,
	[VALBASECALC_II] [float] NULL,
	[VALDESPADUANEIRA] [float] NULL,
	[VAL_II] [float] NULL,
	[VAL_IOF] [float] NULL,
	[CST1_PIS] [varchar](2) NULL,
	[CST1_COFINS] [varchar](2) NULL,
	[CST1_IPI] [varchar](2) NULL,
	[MODALIDADE_BC] [int] NULL,
	[CST2] [varchar](3) NULL,
	[ENTIDADEID_FUNC] [int] NULL,
	[MODALIDADEBC_ST] [int] NULL,
	[ICMS_ST] [float] NULL,
	[CST1] [varchar](3) NULL,
	[FRETE] [float] NULL,
	[FAIXAID] [int] NULL,
	[CORID] [int] NULL,
	[AMBIENTEID] [int] NULL,
	[NOVACOR] [varchar](12) NULL,
	[VALOR_DESCONTO] [float] NULL,
	[VALOR_ICMS] [float] NULL,
	[VALOR_ICMS_BC] [float] NULL,
	[VALOR_ICMS_BC_ST] [float] NULL,
	[VALOR_ICMS_ST] [float] NULL,
	[VALOR_SEGURO] [float] NULL,
	[VALOR_OUTRAS] [float] NULL,
	[NUMSERIE] [varchar](20) NULL,
	[OBS] [text] NULL,
	[PRODCOMPOSICAO] [varchar](1) NULL,
	[STATUS] [varchar](1) NULL,
	[QUANTIDADE_DEVOLVIDA] [float] NULL,
	[DATA_ENTREGA] [datetime] NULL,
	[DATA_COMPRA] [datetime] NULL,
	[DATA_DEVOLUCAO] [datetime] NULL,
	[USUARIO_ENTREGA] [varchar](20) NULL,
	[USUARIO_COMPRA] [varchar](20) NULL,
	[USUARIO_DEVOLUCAO] [varchar](20) NULL,
	[item_mestre] [int] NULL,
	[TIPOSEPARACAO] [varchar](5) NULL,
	[QUANTIDADE_COMPRADA] [float] NULL,
	[PROMOCAO] [varchar](1) NULL,
	[TABPRECOID] [varchar](10) NULL,
	[ITEM_CALCULADO] [varchar](20) NULL,
	[GRADEID] [varchar](5) NULL,
	[IDENTIDADE] [int] NULL,
	[ENTIDADEID_LOJA_ORIGEM] [int] NULL,
	[VALOR_PIS_BC] [float] NULL,
	[VALOR_COFINS_BC] [float] NULL,
	[VALOR_IPI_BC] [float] NULL,
	[TOTAL_LIQUIDO] [float] NULL,
	[ITEM_PAI] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[ITENS_DIA] ADD [RECOPI] [varchar](20) NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [TIPOITEM] [int] NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[ITENS_DIA] ADD [descricao_nfe] [varchar](400) NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [BC_UF_DESTINO] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [PERCENTUAL_FCP_UF_DESTINO] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [PERCENTUAL_ICMS_UF_DESTINO] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [PERCENTUAL_ICMS_INTERESTADUAL] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [PERCENTUAL_PARTILHA_INTERESTADUAL] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VALOR_FCP_UF_DESTINO] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VALOR_ICMS_UF_DESTINO] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VALOR_ICMS_UF_ORIGEM] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [BC_OPERACAO_INTERESTADUAL] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VALOR_ICMS_UF_INTERESTADUAL] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [OBSID] [int] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [valor_ipi] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [valor_pis] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [valor_cofins] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [total_bruto] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [DATA_ENTREGA_PREVISTA] [datetime] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [ENQUADRAMENTO_IPI] [varchar](3) NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [ITEM_XML] [int] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [USUARIO2] [varchar](20) NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [STATUSPRODUCAOID] [int] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [STATUSENTREGAID] [int] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [PERCENTUAL_PARTILHA_INTERESTAD] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VAL_BC_FCP] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [PERC_FCP] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VAL_FCP] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VAL_BC_FCP_ST] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [PERC_FCP_ST] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VAL_FCP_ST] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VAL_BC_FCP_ST_RET] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [PERC_FCP_ST_RET] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VAL_FCP_ST_RET] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [ALIQ_ST_FCP] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [TAMANHO] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [METROS] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [M2] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [MOTIVO_PARADA] [varchar](255) NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [ID_ITEM_PDV] [int] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [QUANTIDADE_ENTREGUE] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [QUANTIDADE_RESTANTE] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [QUANTIDADE_AVARIA] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [BASE_ICMS_ST_RET] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [ALIQUOTA_ST] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VALOR_ICMS_ST_RET] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [BASE_FCP_ST_RET] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [FCP_ST_RET] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VALOR_FCP_ST_RET] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [RED_BASE_EFETIVA] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [BASE_EFETIVA] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [ICMS_EFETIVO] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [VALOR_ICMS_EFETIVO] [float] NULL
ALTER TABLE [dbo].[ITENS_DIA] ADD [PRECO_ORCADO] [float] NULL
/****** Object:  Index [PK__ITENS_DIA__4A8310C6]    Script Date: 10/08/2019 13:42:53 ******/
ALTER TABLE [dbo].[ITENS_DIA] ADD PRIMARY KEY CLUSTERED 
(
	[ENTIDADEID_LOJA] ASC,
	[CONTA] ASC,
	[ITEM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[ITENS_DIA]  WITH CHECK ADD FOREIGN KEY([TABPRECOID])
REFERENCES [dbo].[TABPRECO] ([TABPRECOID])
GO

ALTER TABLE [dbo].[ITENS_DIA]  WITH CHECK ADD  CONSTRAINT [FK_ITENS_DIA_LOJA] FOREIGN KEY([ENTIDADEID_LOJA_ORIGEM])
REFERENCES [dbo].[ENTIDADES] ([ENTIDADEID])
GO

ALTER TABLE [dbo].[ITENS_DIA] CHECK CONSTRAINT [FK_ITENS_DIA_LOJA]
GO

ALTER TABLE [dbo].[ITENS_DIA]  WITH CHECK ADD  CONSTRAINT [FK_ITENS_DIA_MOVIMENTO_DIA] FOREIGN KEY([CONTA], [ENTIDADEID_LOJA])
REFERENCES [dbo].[MOVIMENTO_DIA] ([CONTA], [ENTIDADEID_LOJA])
GO

ALTER TABLE [dbo].[ITENS_DIA] CHECK CONSTRAINT [FK_ITENS_DIA_MOVIMENTO_DIA]
GO

ALTER TABLE [dbo].[ITENS_DIA]  WITH CHECK ADD  CONSTRAINT [ITENS_DIA_OBS_VENDA] FOREIGN KEY([OBSID])
REFERENCES [dbo].[OBS_VENDAS] ([OBSID])
GO

ALTER TABLE [dbo].[ITENS_DIA] CHECK CONSTRAINT [ITENS_DIA_OBS_VENDA]
GO

ALTER TABLE [dbo].[ITENS_DIA] ADD  DEFAULT (0) FOR [CONTA]
GO

