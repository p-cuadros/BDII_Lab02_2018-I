
 ------ 5--------------
 
select * from departments;
--- drop la eliminara si existe esta secuencia
drop sequence SEQ_Departamentos_ID;
--- creamos la secuencia
create sequence SEQ_Departamentos_ID
  start with 200
  increment by 10
  maxvalue 1000
  minvalue 200;

  ------6-----------------------
  
  declare @liCodigo int
	select @liCodigo = next value for SEQ_Departamentos_ID;
	insert into departments  values(@liCodigo,'matematica','300','3300');
	select * from departments

--------7-------------------------------------------------------




