






---------Ejercicio 3: creacion de vista--------------Ronald Ordoñez------------------------------
CREATE VIEW VW_Dept50 AS
SELECT employee_id EmpNo, last_name employee, department_id DeptNo
FROM employees
WHERE department_id = 50;
GO
--visualizamos que en la nueva vista conteniendo empleados con el department_id 50--
select * from VW_Dept50


---------Ejercicio 4: Actualizacion de datos del department_id de 50 a 80------
UPDATE VW_Dept50
SET DeptNo = 80;
GO
--Ya no visualizaremos datos de la vista--
select * from VW_Dept50
--Visualizaremos los department_id Actualizados--
select * from employees
-------------------------------------------------------------------------------------------------
