CREATE OR ALTER PROCEDURE UDP_ELIMINARDATOS_tblSeccion
	@UsuarioMod	NVARCHAR(255),
	@RegistroId	NVARCHAR(255)
AS
BEGIN
UPDATE [dbo].[tblSeccion]
   SET [scn_UsuarioModificacion] = @UsuarioMod
      ,[scn_FechaModificacion] = GETDATE()
      ,[scn_Estado] = 0
 WHERE [scn_Id] = @RegistroId
END;