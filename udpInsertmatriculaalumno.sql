USE [DBMatricula]
GO
/****** Object:  StoredProcedure [dbo].[UDP_MatriculaAlumnos]    Script Date: 16/2/2023 16:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[UDP_MatriculaAlumnos]
(@Nombre NVARCHAR(150),
 @Apellido NVARCHAR(150), 
 @FechaNac nvarchar(150), 
 @Identidad NVARCHAR(150),
 @Ciudad INT, 
 @Sexo CHAR(1), 
 @Telefono NVARCHAR(150), 
 @UsuarioID INT,
 @Encargadoid nvarchar(10))
AS
INSERT INTO [dbo].[tblPersonas](per_Nombre, per_Apellido, per_Fechanacimiento, per_Identidad, Ciu_CiudadId, per_Sexo, etc_ID, per_Telefono, Crg_CargoID, per_EncargadoId, per_UsuCrea, per_FechaCrea, per_Estado)
VALUES	(@Nombre, 
		@Apellido ,
		@FechaNac ,
		@Identidad ,
		@Ciudad ,
		@Sexo ,
		'S' ,
		@Telefono ,
		1 , 
		@EncargadoID, 
		@UsuarioID ,
		GETDATE(), 
		1);