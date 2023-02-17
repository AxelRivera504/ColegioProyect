CREATE OR ALTER PROCEDURE UDP_ACTULIZARDATOStblCargos
	@Cargo			NVARCHAR(255),
	@UsuarioMod		NVARCHAR(255),
	@RegistroId		NVARCHAR(255)
AS
BEGIN
	UPDATE [dbo].[tblCargos]
   SET [Crg_Cargo] = @Cargo
      ,[Crg_UsuMod] = @UsuarioMod
      ,[Crg_FechaMod] = GETDATE()
 WHERE [Crg_CargoID] = @RegistroId
END;