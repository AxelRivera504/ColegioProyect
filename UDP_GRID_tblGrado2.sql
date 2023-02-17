CREATE OR ALTER PROCEDURE UDP_GRID_tblGrado2
	@PARAMETRO	NVARCHAR(255)
AS
BEGIN
	SELECT	grd_ID,
			grd_Descripcion
	FROM	tblGrados
	WHERE	grd_Estado = 1
	AND		grd_ID like '%'+@PARAMETRO+'%'
	OR		grd_Descripcion like '%'+ @PARAMETRO+ '%' and grd_Estado = 1
END;