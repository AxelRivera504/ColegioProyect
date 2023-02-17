CREATE OR ALTER PROCEDURE UDP_LlenarPerfil(@UsuarioID NVARCHAR(255))
AS
SELECT * FROM tblPersonas T1 INNER JOIN tblCiudades T2
ON	T1.Ciu_CiudadId = T2.Ciu_CiudadId INNER JOIN tblDepartamentos T3
ON	T2.Dpt_DepartamentoId = T3.Dpt_DepartamentoId 
WHERE Crg_CargoID = 3 AND per_Id = @UsuarioID