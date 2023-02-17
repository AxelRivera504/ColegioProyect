CREATE OR ALTER PROCEDURE UDP_MOSTARGRID_tblDepartamento2
	@Parametro		NVARCHAR(255)
AS
BEGIN
	SELECT	DISTINCT(Dpt_DepartamentoId),
			Dpt_Descripcion
	FROM	tblDepartamentos
	WHERE	Dpt_DepartamentoId like '%'+@Parametro+'%'
	OR		Dpt_Descripcion like '%'+@Parametro+'%'
END