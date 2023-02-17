CREATE OR ALTER PROCEDURE UDP_GRID_tblJornada1
AS
BEGIN
	SELECT  jrn_Id, 
			jrn_Descripcion
	FROM	[dbo].[tblJornada]
	WHERE	jrn_Estado = 1
END;