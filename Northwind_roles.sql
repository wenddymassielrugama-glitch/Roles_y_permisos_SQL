use master;
go

create LOGIN Massiel
with password = 'Admin_missdb#2026',
check_policy = on;
go

use Northwind
go

CREATE USER Massiel
FOR LOGIN Massiel;
go

CREATE ROLE Rol_Lectura;
go
use Northwind
go
grant select  -- permiso solo de lectura a la BD--
on schema ::dbo
to Rol_Lectura;

deny Create table to Massiel; -- Bloquea accesos dentro de la BD__
grant alter on schema :: dbo
to Massiel

--Producto



