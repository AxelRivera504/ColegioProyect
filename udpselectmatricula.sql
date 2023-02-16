USE [DBMatricula]
GO
/****** Object:  StoredProcedure [dbo].[UDP_SelectMatricula]    Script Date: 16/2/2023 16:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[UDP_SelectMatricula]

AS
BEGIN
select mtr_ID, 
t2.per_Nombre,
t2.per_Apellido,
mtr_Fecha, 
t3.grd_Descripcion, 
t4.jrn_Descripcion, 
t5.scn_Descripcion,
mtr_UsuarioCre, 
mtr_FechaCrea, 
mtr_UsuarioMod, 
mtr_FechaMod, 
mtr_Estado 
from tblMatricula t1 inner join tblPersonas t2 
on t1.per_Id = t2.per_Id inner join tblGrados t3
on t1.grd_ID = t3.grd_ID inner join tblJornada t4
on t1.jrn_Id = t4.jrn_Id inner join tblSeccion t5
on t1.scn_Id = t5.scn_Id
where mtr_Estado = 'true'


END
