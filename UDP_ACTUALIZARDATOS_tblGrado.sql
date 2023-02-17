CREATE OR ALTER PROCEDURE UDP_ACTUALIZARDATOS_tblGrado
	@Grado		NVARCHAR(255),
	@UsuarioMod	NVARCHAR(255),
	@RegistroId	NVARCHAR(255)
AS
BEGIN
	UPDATE [dbo].[tblGrados]
   SET [grd_Descripcion] = @Grado
      ,[grd_UsuMod] = @UsuarioMod
      ,[grd_FechaMod] = GETDATE()
 WHERE [grd_ID] = @RegistroId
END;