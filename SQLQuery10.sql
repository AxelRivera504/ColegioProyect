USE [DBMatricula]
GO
/****** Object:  StoredProcedure [dbo].[UDP_SelectPersona]    Script Date: 15/2/2023 16:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[UDP_SelectPersona]
@CargoId nvarchar(10)
AS
BEGIN
select	t1.per_Id, 
			t1.per_Nombre, 
			t1.per_Apellido, 
		t1.per_Fechanacimiento, 
			t1.per_Identidad, 
			t1.Ciu_CiudadId, 
			t1.per_Sexo, 
			t1.etc_ID, 
			t1.per_Telefono,
			t2.per_Nombre Encargado
	from [dbo].[tblPersonas]  t1 left JOIN tblPersonas  t2 on t1.per_EncargadoId = t2.per_Id
	where	t1.per_Estado = 'true'and
			t1.Crg_CargoID = @CargoId
END
