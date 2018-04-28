


------ Luis Angel Zavala Venegas

--Ejercicio 12
exec insertar_datos 6,'Hurtado Gamboa','Ernesto','ehurtado',1400
go


--Ejercicio 13
select * from mis_empleados
go


--Ejercicio 14
begin tran;
save tran p1;


--Ejercicio 15
delete from mis_empleados;


--Ejercicio 16
select * from mis_empleados;


--Ejercicio 17
rollback tran p1;


--Ejercicio 18
select * from mis_empleados


--Ejercicio 19
select [Begin Time],[RowLog Contents 1],[Transaction Name],Operation 
from sys.fn_dblog(NULL,NULL)
where AllocUnitName='dbo.mis_empleados' and Operation IN ('LOP_DELETE_ROWS')
go


--Ejercicio 20
alter proc insertar_datos @id int, @ape varchar(25), @nom varchar(25), @sal decimal(9,2)
as
declare @cod varchar(10);
set @cod = LEFT(@nom,1) + @ape;
insert into mis_empleados values (@id,@ape,@nom,@cod,@sal);
go


--Ejercicio 21
exec insertar_datos 7,'Valdivia Pérez','Graciela',1800;
go


--Ejercicio 22
select * from mis_empleados
select [Current LSN],[Transaction ID],[RowLog Contents 0],Operation 
from sys.fn_dblog(NULL,NULL) 
where AllocUnitName='dbo.mis_empleados' and Operation IN ('LOP_INSERT_ROWS')
go