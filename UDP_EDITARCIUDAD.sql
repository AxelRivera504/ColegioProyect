CREATE OR ALTER PROCEDURE UDP_EDITARCIUDAD
	@CIUDADID		NVARCHAR(255),
	@CIUDADES		NVARCHAR(255),
	@DEPARTAMENTOID	NVARCHAR(255),
	@UsuarioMod		NVARCHAR(255)
AS 
BEGIN

UPDATE [dbo].[tblCiudades]
   SET [Ciu_Descripcion] = @CIUDADES
      ,[Dpt_DepartamentoId] = @DEPARTAMENTOID
      ,[Ciu_UsuarioModificacionId] = @UsuarioMod
      ,[Ciu_FechaModificacion] = GETDATE()
 WHERE [Ciu_CiudadId] = @CIUDADID;

END;