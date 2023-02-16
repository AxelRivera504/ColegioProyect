USE [DBMatricula]
GO
/****** Object:  StoredProcedure [dbo].[UDP_RESTABLECERCONTRA]    Script Date: 16/2/2023 16:10:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[UDP_RESTABLECERCONTRA]
	@UsuarioId		NVARCHAR(255),
	@Contra			VARCHAR(255)
AS
BEGIN
	DECLARE @Pass VARBINARY(MAX) = HASHBYTES('SHA2_512',@Contra);
	DECLARE @HEH VARCHAR(MAX) = CONVERT(NVARCHAR(MAX),@Pass,1);
	
	
UPDATE [dbo].[tblUsuarios]
   SET [Usu_Clave] = CONVERT(NVARCHAR(MAX),@HEH,1) 
      ,[Usu_UsuMod] = @UsuarioId
      ,[Usu_FechaMod] = GETDATE()
 WHERE [Usu_UsuarioID] = @UsuarioId

END;