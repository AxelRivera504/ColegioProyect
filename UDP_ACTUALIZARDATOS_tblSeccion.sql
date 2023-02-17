CREATE OR ALTER PROCEDURE UDP_AgregarDatos_tblSeccion
	@Codigo			NVARCHAR(255),
	@Seccion		NVARCHAR(255),
	@UsuarioCrea	NVARCHAR(255)
AS
BEGIN
	INSERT INTO [dbo].[tblSeccion]([scn_Id], [scn_Descripcion], [scn_UsuarioCreacion], [scn_UsuarioModificacion], [scn_FechaCreacion], [scn_FechaModificacion], [scn_Estado])
	VALUES(@Codigo,@Seccion,@UsuarioCrea,NULL,GETDATE(),NULL,1);
END;