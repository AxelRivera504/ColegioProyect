CREATE OR ALTER PROCEDURE UDP_ACTUALIZARDATOS_tblSeccion
	@Seccion	NVARCHAR(255),
	@UsuarioMod	NVARCHAR(255),
	@RegistroId	NVARCHAR(255)
AS
BEGIN
	UPDATE [dbo].[tblSeccion]
   SET [scn_Descripcion] = @Seccion
      ,[scn_UsuarioModificacion] = @UsuarioMod
      ,[scn_FechaModificacion] = GETDATE()
 WHERE [scn_Id] = @RegistroId;
END;