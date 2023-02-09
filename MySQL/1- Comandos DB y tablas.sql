-- Crear db
-- create database my_DB;

-- Especificar que usamos la db
-- USE my_DB

-- Borrar DB
-- DROP DATABASE MY_DB;

-- Hacerla read only
-- alter DATABASE my_DB read only = 1;

-- Quitar read only
-- alter DATABASE my_DB read only = 0;

-- Crear Tabla
/*
create table employees (
	employee_id INT, 
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);
*/

-- Seleccionar tabla:
 select * from employees;

-- Renombrar tabla:
-- rename table workers to employees;

-- Borrar tabla
-- drop table employees;

-- Añadir a tabla:
/*
alter table employees
add phone_number varchar(15);
*/

-- Modificar a tabla:
/*
alter table employees
rename column phone_number to email;
*/

-- Modificar Columna:
/*
alter table employees
modify column email varchar(100);
*/

-- Modificar posicion de las columnas:
-- si quisieramos que estuviera primero en vez de after last_name, ponemos solo first;
/*
alter table employees
modify email varchar(100)
after last_name;
*/

-- Borrar columna:
/*
alter table employees
drop column email;
*/

