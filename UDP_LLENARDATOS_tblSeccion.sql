CREATE OR ALTER PROCEDURE UDP_LLENARCAMPOS_tblSeccion
	@RegistroId		NVARCHAR(255)
AS
BEGIN
	SELECT	scn_Descripcion
	FROM	tblSeccion
	WHERE	scn_Id = @RegistroId
END;