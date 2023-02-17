CREATE OR ALTER PROCEDURE UDP_AGREGARDATOS_tblGrado
	@Grado			NVARCHAR(255),
	@UsuarioCrea	NVARCHAR(255)

AS
BEGIN
	INSERT INTO [dbo].[tblGrados]([grd_Descripcion], [grd_UsuCrea], [grd_FechaCrea], [grd_UsuMod], [grd_FechaMod], [grd_Estado])
	VALUES(@Grado,@UsuarioCrea,GETDATE(),NULL,NULL,1)
END