--4.1 Actividad N° 01: Manipulación de Datos--

--RENZO MORENO

--Ejercicio 1
use [Human_Resources]
go


--Ejercicio 2
create table mis_empleados (
	empleados_id	int not null,
	apellidos		varchar(25),
	nombres			varchar(25),
	codigo			varchar(10),
	salario			decimal(9,2)
)
go


--Ejercicio 3
insert into mis_empleados values
	(1, 'Vargas Canseco','Raúl', 'rvargas', 895),
	(2, 'Castro Feria',  'María','mcastro', 860);
go


--Ejercicio 4
create proc insertar_datos @id int, @ape varchar(25), @nom varchar(25), @cod varchar(10), @sal decimal(9,2)
as
insert into mis_empleados values (@id,@ape,@nom,@cod,@sal);
go


--Ejercicio 5
exec insertar_datos 3,'Gómez Albán','Juan Pablo','jgomez',1100;
exec insertar_datos 4,'Quiroz Ardiles','Judith','jquiroz',750;
exec insertar_datos 5,'Soria Peralta','Pedro','psoria',1550;
go


--Ejercicio 6
select * from mis_empleados
go


--Ejercicio 7
update mis_empleados set nombres='Benjamin' where empleados_id=3;
go


--Ejercicio 8
update mis_empleados set salario=1000 where salario<1000;
go


--Ejercicio 9
delete from mis_empleados where codigo='mcastro';
go


--Ejercicio 10
select [Begin Time],[RowLog Contents 1],[Transaction Name],Operation 
from sys.fn_dblog(NULL,NULL) 
where AllocUnitName='dbo.mis_empleados' and Operation IN ('LOP_DELETE_ROWS')
go


--Ejercicio 11
select * from mis_empleados
go


--********************************--
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
