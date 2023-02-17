CREATE OR ALTER PROCEDURE UDP_ELIMINARDATOS_tblGrado
	@UsuarioMod	NVARCHAR(255),
	@RegistroId	NVARCHAR(255)
AS
BEGIN
	UPDATE [dbo].[tblGrados]
   SET [grd_UsuMod] = @UsuarioMod
      ,[grd_FechaMod] = GETDATE()
      ,[grd_Estado] = 0
 WHERE [grd_ID] = @RegistroId
END;
