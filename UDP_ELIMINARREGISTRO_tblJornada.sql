CREATE OR ALTER PROCEDURE UDP_ELIMINAR_tblJornada
	@UsuarioMod		NVARCHAR(255),
	@RegisterID		NVARCHAR(255)
AS
BEGIN
	UPDATE [dbo].[tblJornada]
   SET [jrn_UsuarioModificacion] = @UsuarioMod
      ,[jrn_FechaModificacion] = GETDATE()
      ,[jrn_Estado] = 0
 WHERE [jrn_Id] = @RegisterID

END;