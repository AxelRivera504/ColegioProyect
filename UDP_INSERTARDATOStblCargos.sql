CREATE OR ALTER PROCEDURE UDP_INGRESARDATOStblCargos
	@Cargo			NVARCHAR(255),
	@UsuarioCrea	NVARCHAR(255)
AS
BEGIN
	INSERT INTO [dbo].[tblCargos](Crg_Cargo, Crg_UsuCrea, Crg_FechaCrea, Crg_UsuMod, Crg_FechaMod)
	VALUES(@Cargo,@UsuarioCrea,GETDATE(),NULL, NULL );
END;