USE [DBMatricula]
GO
/****** Object:  StoredProcedure [dbo].[UDP_EliminarMatricula]    Script Date: 16/2/2023 16:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[UDP_EliminarMatricula]
@id2 int
AS
BEGIN
declare @id nvarchar(150) = '2'
update tblMatricula
set mtr_Estado = 0
where mtr_ID = @id2
END
