CREATE OR ALTER PROCEDURE UDP_DatosPerfil(@UsuarioID INT)
AS
SELECT per_Nombre, per_Apellido, per_Fechanacimiento, per_Identidad, Ciu_Descripcion, Dpt_Descripcion, per_Sexo, T5.etc_Descripcion, per_Telefono FROM tblPersonas T1 INNER JOIN tblUsuarios T2
ON	T1.per_Id = T2.per_Id INNER JOIN tblCiudades T3
ON	T1.Ciu_CiudadId = T3.Ciu_CiudadId INNER JOIN tblDepartamentos T4
ON	T3.Dpt_DepartamentoId = T4.Dpt_DepartamentoId INNER JOIN tblEstadosCiviles T5
on T1.etc_ID = T5.etc_ID
WHERE Crg_CargoID = 3 AND Usu_UsuarioID = @UsuarioID