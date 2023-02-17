CREATE OR ALTER PROCEDURE UDP_GRID_tblGrado
AS
BEGIN
	SELECT	grd_ID,
			grd_Descripcion
	FROM	tblGrados
	WHERE	grd_Estado = 1
END;