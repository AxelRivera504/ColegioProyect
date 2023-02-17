CREATE OR ALTER PROCEDURE UDP_LLENARDATOSEstado
	@RegistroId		NVARCHAR(255)
AS
BEGIN
	SELECT	[etc_ID],
			[etc_Descripcion]	
	FROM	[dbo].[tblEstadosCiviles]
	Where	[etc_ID] = @RegistroId
END;