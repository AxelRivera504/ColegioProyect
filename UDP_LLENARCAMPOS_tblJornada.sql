CREATE OR ALTER PROCEDURE UDP_LLENARCAMPOS_tblJornada
	@RegistroId	NVARCHAR(255)
AS
BEGIN
	SELECT	[jrn_Descripcion]
  FROM		[dbo].[tblJornada]
  WHERE		[jrn_Id] = @RegistroId
END;
