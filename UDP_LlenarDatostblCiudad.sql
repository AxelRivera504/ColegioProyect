CREATE OR ALTER PROCEDURE UDP_LLENARDATOS
	@RegistroId		NVARCHAR(255)
AS
BEGIN
	SELECT	Ciu_CiudadId,
			Ciu_Descripcion,
			Dpt_DepartamentoId
	FROM	tblCiudades
	Where	Ciu_CiudadId = @RegistroId
END;