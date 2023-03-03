CREATE TABLE [dbo].[USUARIOS](
	[CODIGO] [varchar](10) NOT NULL,
	[NOME] [varchar](40) NULL,
	[SENHA] [varchar](8) NULL,
	[FUNCIONARIO] [int] NULL,
	[GRUPO] [int] NOT NULL,
	[ORDEM] [float] NULL,
	[Senha2] [varchar](50) NULL,
	[NDIASMUDANCA] [int] NULL,
	[PROXIMAMUDANCA] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD FOREIGN KEY([GRUPO])
REFERENCES [dbo].[GRUPOS] ([CODIGO])
GO

ALTER TABLE [dbo].[USUARIOS] ADD  DEFAULT (0) FOR [GRUPO]
GO
