
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
  
  -- seleccionamos la tabla

  
  
  select * from regions ;
  select * from countries ;
  select * from locations ;
select * from departments;
  -- agregamos dos registros para ver las secuencias

  


  insert into regions  values('5','america');

  insert into countries  values('Am','america','5');

   insert into locations  values('3300','2014 america city','26588','begin','texas','Am');

	insert into departments  values('300','educacion','300','3300');



	-------seleccionamos la secuencia
	
	select next value for SEQ_Departamentos_ID;


