CREATE OR ALTER PROCEDURE UDP_GRID_tblSeccion1
AS
BEGIN

SELECT [scn_Id]
      ,[scn_Descripcion]
  FROM [dbo].[tblSeccion]
  WHERE	scn_Estado = 1
END;