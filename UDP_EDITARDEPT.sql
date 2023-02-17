CREATE OR ALTER PROCEDURE UDP_EDITARDEPTO
	@DEPARTAMENTO		NVARCHAR(255),
	@UsuarioId			NVARCHAR(255),
	@RegistroId			NVARCHAR(255)
AS
BEGIN
	UPDATE [dbo].[tblDepartamentos]
   SET [Dpt_Descripcion] = @DEPARTAMENTO
      ,[Dpt_UsuarioModificacionId] = @UsuarioId
      ,[Dpt_FechaModificacion] = GETDATE()
 WHERE [Dpt_DepartamentoId] = @RegistroId

END;