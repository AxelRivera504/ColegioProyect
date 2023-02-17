CREATE OR ALTER PROCEDURE UDP_GRID_tblSeccion2
	@PARAMETRO	NVARCHAR(255)
AS
BEGIN

SELECT ([scn_Id])
      ,[scn_Descripcion]
  FROM [dbo].[tblSeccion]
  WHERE [scn_Estado] = 1
  AND	[scn_Id] LIKE '%'+@PARAMETRO +'%' 
  OR	([scn_Descripcion] LIKE '%'+@PARAMETRO +'%' AND [scn_Estado] = 1)
END;
