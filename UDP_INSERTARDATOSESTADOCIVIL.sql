CREATE OR ALTER PROCEDURE UDP_INSERTARDATOSEstado
	@CODIGOESTADO	NVARCHAR(255),
	@ESTADO			NVARCHAR(255),
	@UsuarioId		NVARCHAR(255)
AS
BEGIN
	INSERT INTO [dbo].[tblEstadosCiviles]([etc_ID],[etc_Descripcion],[etc_UsuCrea],[etc_FechaCrea],[etc_UsuMod],[etc_FechaMod])
     VALUES(@CODIGOESTADO,@ESTADO,@UsuarioId,GETDATE(),NULL,NULL);
END;
