CREATE VIEW v_Site_CargaEntrega AS
	SELECT a.*
	FROM CARGA a, REGISTROS_SINCRONIZAR b
	WHERE a.cargaid = b.CARGAID
	AND B.DATASINCRONIZACAO IS NULL