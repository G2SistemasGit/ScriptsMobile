CREATE VIEW [dbo].v_G2AutoMobileClientes AS
	SELECT distinct (SELECT VALOR FROM CONFIGURACAO WHERE PARAMETRO = 31601) IDG2, ENTIDADEID, ISNULL(TIPO, 0) TIPO, CODCLI, ISNULL(LTRIM(DESCRICAO), '') DESCRICAO, ISNULL(LTRIM(LEFT(DESCRICAO2, 35)), '') FANTASIA,
		ISNULL(LEFT(BAIRRO, 19), '') BAIRRO, ISNULL(LEFT(CIDADE, 19), '') CIDADE, ISNULL(UF, '') UF, ISNULL(PAIS, '') PAIS,
		ISNULL(ENTIDADEID_VENDEDOR, 0) ENTIDADEID_VENDEDOR,
		ISNULL(REPLACE(REPLACE(REPLACE(REPLACE(CNPJ_CPF, '.', ''), '-', ''), '/', ''), '/', ''), '') CNPJ_CPF,
		ISNULL(ATIVO, 'N') ATIVO, ISNULL(LIMITECREDITO, 0) LIMITECREDITO, ISNULL(indice_aproveitamento, 0) indice_aproveitamento,
		ISNULL(LEFT(ENDERECO, 35), '') ENDERECO, ISNULL(LEFT(CEP, 19), '') CEP, ISNULL(LEFT(NUMERO, 19), '') NUMERO, ISNULL(COMPLEMENTO, '') COMPLEMENTO, ISNULL(CONTATO, '') CONTATO,
		ISNULL(LEFT(EMAIL, 35), '') EMAIL,
		ISNULL(CAST(OBS as varchar(8000)), '') OBS,
		BUSCA = ISNULL(descricao, ' ') + ' ' +
				ISNULL(descricao2, ' ') + ' ' +
				ISNULL(REPLACE(REPLACE(REPLACE(REPLACE(CNPJ_CPF, '.', ''), '-', ''), '/', ''), '/', ''), '') + ' ' +
				ISNULL(email, ' ') + ' ' +
				ISNULL(codcli, ' ') + ' ' +
				ISNULL(CAST(ENTIDADEID AS VARCHAR(20)), ' ')
		FROM ENTIDADES