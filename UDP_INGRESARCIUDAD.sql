CREATE OR ALTER PROCEDURE UDP_INGRESARCiudad
	@IdCiudad		NVARCHAR(255),
	@CIUDAD			NVARCHAR(255),
	@DEPARTAMENTOID	NVARCHAR(255),
	@UsuarioCreaId	NVARCHAR(255)
AS
BEGIN
	INSERT INTO [dbo].[tblCiudades]([Ciu_CiudadId] ,[Ciu_Descripcion],[Dpt_DepartamentoId],[Ciu_UsuarioCreacionId],[Ciu_FechaCreacion],[Ciu_UsuarioModificacionId],[Ciu_FechaModificacion])
     VALUES(@IdCiudad,@CIUDAD,@DEPARTAMENTOID,@UsuarioCreaId,GETDATE(),NULL,NULL)
END;