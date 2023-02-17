CREATE OR ALTER PROCEDURE UDP_GRID_tblJornadas2
	@PARAMETRO		NVARCHAR(255)
AS
BEGIN
	SELECT	[jrn_Id]
			,[jrn_Descripcion]
  FROM		[dbo].[tblJornada]
  WHERE		[jrn_Estado] = 1
  AND		[jrn_Id] LIKE '%'+@PARAMETRO+'%'
  OR		([jrn_Descripcion] LIKE '%'+@PARAMETRO+'%' AND [jrn_Estado] = 1 )
END;