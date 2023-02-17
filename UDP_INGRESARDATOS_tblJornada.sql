CREATE OR ALTER PROCEDURE UDP_INGRESARDATOS_tblJornada
	@Codigo			NVARCHAR(255),
	@Jornada		NVARCHAR(255),
	@UsuarioCrea	NVARCHAR(255)
AS
BEGIN
	INSERT INTO [dbo].[tblJornada](jrn_Id, jrn_Descripcion, jrn_UsuarioCreacion, jrn_UsuarioModificacion, jrn_FechaCreacion, jrn_FechaModificacion, jrn_Estado)
	VALUES(@Codigo,@Jornada,@UsuarioCrea,NULL,GETDATE(),NULL,1);
END;