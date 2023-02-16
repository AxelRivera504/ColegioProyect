USE [DBMatricula]
GO
/****** Object:  StoredProcedure [dbo].[UDP_LOGIN]    Script Date: 16/2/2023 16:09:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[UDP_LOGIN]
	@USER		NVARCHAR(255),
	@Password	VARCHAR(MAX)
AS
BEGIN
	DECLARE @Pass VARBINARY(MAX) = HASHBYTES('SHA2_512',@Password);
	DECLARE @HEH VARCHAR(MAX) = CONVERT(NVARCHAR(MAX),@Pass,1);
	SELECT Usu_UsuarioID, Usu_Usuario,[Usu_EsAdmin] FROM [dbo].[tblUsuarios] WHERE (Usu_Usuario = @USER AND Usu_Clave = @HEH)
END;
