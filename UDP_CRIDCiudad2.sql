CREATE OR ALTER PROCEDURE UDP_GRIDCiudad2
	@PARAMETRO		NVARCHAR(255)
AS
BEGIN
	SELECT	DISTINCT(Ciu_CiudadId),
			Ciu_Descripcion,
			t2.Dpt_Descripcion
	FROM	tblCiudades t1 INNER JOIN tblDepartamentos t2
	ON		t1.Dpt_DepartamentoId = t2.Dpt_DepartamentoId
	WHERE	Ciu_CiudadId like '%'+@PARAMETRO +'%'
	OR		Ciu_Descripcion like '%'+@PARAMETRO +'%'
	OR		t2.Dpt_Descripcion like '%'+@PARAMETRO +'%'
END;