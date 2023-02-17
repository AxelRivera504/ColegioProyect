CREATE OR ALTER PROCEDURE UDP_GRIDEncargados(@Busqueda NVARCHAR(MAX))
AS
SELECT * FROM tblPersonas
WHERE per_Id LIKE '%'+@Busqueda+'%'  AND Crg_CargoID = 2 AND per_Estado = 1
OR per_Nombre LIKE '%'+@Busqueda+'%' AND Crg_CargoID = 2 AND per_Estado = 1
OR per_Apellido LIKE '%'+@Busqueda+'%' AND Crg_CargoID = 2 AND per_Estado = 1
OR per_Fechanacimiento LIKE '%'+@Busqueda+'%' AND Crg_CargoID = 2 AND per_Estado = 1
OR per_Identidad LIKE '%'+@Busqueda+'%' AND Crg_CargoID = 2 AND per_Estado = 1
OR Ciu_CiudadId LIKE'%'+@Busqueda+'%' AND Crg_CargoID = 2 AND per_Estado = 1
OR per_Sexo LIKE '%'+@Busqueda+'%' AND Crg_CargoID = 2 AND per_Estado = 1
OR etc_ID LIKE'%'+@Busqueda+'%' AND Crg_CargoID = 2 AND per_Estado = 1
OR per_Telefono LIKE '%'+@Busqueda+'%' AND Crg_CargoID = 2 AND per_Estado = 1
OR per_EncargadoId LIKE '%'+@Busqueda+'%' AND Crg_CargoID = 2 AND per_Estado = 1