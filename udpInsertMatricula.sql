USE [DBMatricula]
GO
/****** Object:  StoredProcedure [dbo].[UDP_Matricula]    Script Date: 16/2/2023 16:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[UDP_Matricula](@Grado INT, @Jornada CHAR(1), @Seccion CHAR(1), @UsuarioID INT)
AS
DECLARE @AlumnoID INT = (SELECT TOP 1 per_Id FROM tblPersonas WHERE Crg_CargoID = 1 ORDER BY per_Id DESC)
INSERT INTO tblMatricula(per_Id, mtr_Fecha, grd_ID, jrn_Id, scn_Id, mtr_UsuarioCre, mtr_FechaCrea, mtr_Estado)
VALUES	(@AlumnoID, GETDATE(), @Grado, @Jornada, @Seccion, @UsuarioID, GETDATE(), 1)