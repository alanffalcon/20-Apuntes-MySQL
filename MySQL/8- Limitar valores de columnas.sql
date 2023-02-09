select * from employees

-- Crear se usa para limitar los valores de una columna: 

-- Crear tabla con check
/**
create table employees (
	employee_id int,
    first_name varchar(50),
    last_name varchar(50),
    hourly_pay decimal(5, 2),
    hire_date date,
    constraint chk_hourly_pay check (hourly_pay >= 10.00)
);
*/

-- Agregar check a tabla existente
/*
alter table employees
add constraint chk_hourly_pay check (hourly_pay >= 10.00);
*/

-- Probamos...
insert into employees 
values (6, 'juan', 'gomez', 'juango@gmail.com', 6.00, '2022-04-11');

-- Eliminar un check:
alter table employees 
drop check chk_hourly_pay;
