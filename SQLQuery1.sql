CREATE OR ALTER PROCEDURE UDP_MOSTARGRID_tblDepartamento

AS
BEGIN
	SELECT	Dpt_DepartamentoId,
			Dpt_Descripcion
	FROM	tblDepartamentos
END