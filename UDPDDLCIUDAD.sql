CREATE OR ALTER PROCEDURE UDP_DDLCiudad
	@DeptoId		NVARCHAR(255)
AS
BEGIN
	SELECT	Ciu_CiudadId, Ciu_Descripcion
	FROM	tblCiudades
	WHERE	Dpt_DepartamentoId = @DeptoId
END;