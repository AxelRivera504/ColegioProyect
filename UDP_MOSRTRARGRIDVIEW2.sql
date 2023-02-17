CREATE OR ALTER PROCEDURE UDP_MOSTRARGRIDEstadoCivil2
@PARAMETRO	NVARCHAR(255)
AS
BEGIN
	SELECT [etc_ID]
      ,[etc_Descripcion]
  FROM [dbo].[tblEstadosCiviles]
  WHERE	etc_ID LIKE '%'+ @PARAMETRO+'%'
	OR	etc_Descripcion LIKE '%'+ @PARAMETRO+'%'
END;