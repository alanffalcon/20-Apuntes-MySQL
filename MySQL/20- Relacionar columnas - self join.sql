-- self joins: se usa para añadir una columna de otra tabla.
-- sirve para comparar rows de tablas o ver una jerarquia de data.

select * from customers;

-- añadimos a customer una columna de referencia (quien le recomendo el lugar)
alter table customers
add referral_id int;

update customers
set referral_id = 2
where customer_id = 4;

-- creamos una copia (b) de customers (a)
-- despues cambiamos el numero por el nombre
select * 
from customers as a
inner join customers as b
on a.referral_id = b.customer_id;

-- version final
select 	a.customer_id, a.first_name, a.last_name,
		concat(b.first_name, ' ', b.last_name) as 'referred_by'
from customers as a
left join customers as b
on a.referral_id = b.customer_id;

-- HACEMOS LO MISMO PERO CON OTRO EJEMPLO
-- Creamos un id de supervisor, quien es el jefe de cada empleado:
select * from employees;

alter table employees
add supervisor_id int;

update employees
set supervisor_id = 1
where employee_id = 5;

-- unimos las tablas:
select 	a.employee_id, a.first_name, a.last_name, a.job, a.supervisor_id,
		concat(b.first_name, ' ', b.last_name) as 'reports to'
from employees as a
left join employees as b
on a.supervisor_id = b.employee_id





