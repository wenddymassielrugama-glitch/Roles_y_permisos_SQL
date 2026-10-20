USE Northwind;
GO

UPDATE dbo.Products set UnitPrice = UnitPrice * 1.05 WHERE CategoryID = 1;
GO

BACKUP DATABASE Northwind
TO DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\Backup\Northwind_DIFF.bak'
WITH DIFFERENTIAL, INIT,
NAME = N'Northwind - Differential',
stats = 10;

select * from Products WHERE CategoryID = 2;
GO