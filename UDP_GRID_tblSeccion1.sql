USE [DBMatricula]
GO
/****** Object:  StoredProcedure [dbo].[UDP_GRID_tblSeccion1]    Script Date: 2/16/2023 7:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[UDP_GRID_tblSeccion1]
AS
BEGIN

SELECT [scn_Id]
      ,[scn_Descripcion]
  FROM [dbo].[tblSeccion]
  WHERE [scn_Estado] = 1
END;