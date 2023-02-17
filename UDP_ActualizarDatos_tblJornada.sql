CREATE OR ALTER PROCEDURE ACTUALIZARDATOS_tblJornada
	@Jornada	NVARCHAR(255),
	@UsuarioMod	NVARCHAR(255),
	@RegistroId	NVARCHAR(255)
AS
BEGIN
	UPDATE [dbo].[tblJornada]
   SET [jrn_Descripcion] = @Jornada
      ,[jrn_UsuarioModificacion] = @UsuarioMod
      ,[jrn_FechaModificacion] = GETDATE()
 WHERE [jrn_Id] = @RegistroId
END;