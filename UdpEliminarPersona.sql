USE [DBMatricula]
GO
/****** Object:  StoredProcedure [dbo].[UDP_EliminarAlumno]    Script Date: 16/2/2023 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[UDP_EliminarAlumno]
@ID nvarchar(10)
AS
BEGIN
UPDATE tblPersonas 
set per_Estado = 'false'
where per_Id like @ID
END
