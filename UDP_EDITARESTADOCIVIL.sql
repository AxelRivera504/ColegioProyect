CREATE OR ALTER PROCEDURE UDP_EDITAREstadoCivil
	@RegistroId		NVARCHAR(255),
	@EstadoCivil	NVARCHAR(255),
	@UsuarioMod		NVARCHAR(255)
AS
BEGIN
UPDATE [dbo].[tblEstadosCiviles]
   SET [etc_Descripcion] = @EstadoCivil    
      ,[etc_UsuMod] = @UsuarioMod
      ,[etc_FechaMod] = GETDATE()
 WHERE [etc_ID] = @RegistroId
END;