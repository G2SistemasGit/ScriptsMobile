CREATE VIEW [dbo].[v_G2AutoMobileFormasPagamento] AS
	SELECT FORMAPAGID, DESCRICAO, NPARCELAS, NDIAPRIMEIRA
	FROM formas_de_pagamentos
	WHERE ATIVO = 'S'
