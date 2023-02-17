CREATE OR ALTER PROCEDURE UDP_GRIDCiudad1
AS
BEGIN
	SELECT	Ciu_CiudadId,
			Ciu_Descripcion,
			t2.Dpt_Descripcion
	FROM	tblCiudades t1 INNER JOIN tblDepartamentos t2
	ON		t1.Dpt_DepartamentoId = t2.Dpt_DepartamentoId
END;