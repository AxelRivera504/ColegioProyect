CREATE OR ALTER PROCEDURE UDP_ResetPassword
	@User		NVARCHAR(255),
	@Password	VARCHAR(255)
AS
BEGIN
	DECLARE @Pass VARBINARY(MAX) = HASHBYTES('SHA2_512',@Password);
	DECLARE @HEH VARCHAR(MAX) = CONVERT(NVARCHAR(MAX),@Pass,1);

	DECLARE @IdUser	NVARCHAR(255);
	SELECT @IdUser = [Usu_UsuarioID]
	FROM	[dbo].[tblUsuarios] 
	WHERE	Usu_Usuario = @User

	UPDATE [dbo].[tblUsuarios]
   SET [Usu_Clave] = CONVERT(nvarchar(255),@HEH,1)
      ,[Usu_UsuMod] = @IdUser
      ,[Usu_FechaMod] = GETDATE()
 WHERE [Usu_UsuarioID] = @IdUser
END;