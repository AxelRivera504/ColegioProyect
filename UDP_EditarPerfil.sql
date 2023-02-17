CREATE OR ALTER PROCEDURE UDP_EditarPerfil(@UsuID INT,@Nombre NVARCHAR(150), @Apellido NVARCHAR(150), @FechaNac NVARCHAR,
@Identidad NVARCHAR(150), @EstCiv CHAR(1), @Ciudad INT, @Telefono NVARCHAR(150))
AS
UPDATE tblPersonas
SET per_Nombre = @Nombre, per_Apellido = @Apellido, per_Fechanacimiento = @FechaNac, per_Identidad = @Identidad, Ciu_CiudadId = @Ciudad,
etc_ID = @EstCiv, per_Telefono = @Telefono, per_UsuMod = @UsuID, per_FechaMod = GETDATE()
WHERE per_Id = @UsuID

GO
CREATE OR ALTER PROCEDURE UDP_EDITARPERFIL
	@RegistroId		NVARCHAR(255),
	@Nombre			NVARCHAR(255),
	@Apellido		NVARCHAR(255),
	@Fecha			NVARCHAR(255),
	@Identidad		NVARCHAR(255),
	@Ciudad			NVARCHAR(255),
	@EstadoCivil	NVARCHAR(255),
	@Telefono		NVARCHAR(255),
	@UsuarioMod		NVARCHAR(255)
AS
BEGIN
UPDATE [dbo].[tblPersonas]
   SET [per_Nombre] = @Nombre
      ,[per_Apellido] = @Apellido
      ,[per_Fechanacimiento] = @Fecha
      ,[per_Identidad] = @Identidad
      ,[Ciu_CiudadId] = @Ciudad
      ,[etc_ID] = @EstadoCivil
      ,[per_Telefono] = @Telefono
      ,[per_UsuMod] = @UsuarioMod
      ,[per_FechaMod] = GETDATE()
 WHERE [per_Id] = @RegistroId


END;