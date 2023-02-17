CREATE OR ALTER PROCEDURE UDP_LLENARCAMPOS_tblCargos
	@RegistroId		NVARCHAR(255)
AS
BEGIN
	SELECT	 [Crg_Cargo]
  FROM		[dbo].[tblCargos]
  WHERE		Crg_CargoID = @RegistroId
END;