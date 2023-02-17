CREATE OR ALTER PROCEDURE UDP_GRIDtblCargos2
	@PARAMETRO	NVARCHAR(255)
AS
BEGIN
SELECT [Crg_CargoID]
      ,[Crg_Cargo]
  FROM [dbo].[tblCargos]
  WHERE [Crg_CargoID] LIKE '%'+@PARAMETRO+'%' 
  OR	[Crg_Cargo]	LIKE '%'+@PARAMETRO+'%'
END;