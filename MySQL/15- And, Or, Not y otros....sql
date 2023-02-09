-- and or y not

select * from employees;

-- añadimos una columna a employees
alter table employees
add column job varchar(25) after hourly_pay;

-- seteamos los trabajos: 'cashier' manager
update employees
set job = 'asst. manager'
where employee_id = 5;

-- seleccionamos con dos condiciones
select * 
from employees
where hire_date < '2023-01-5' and job = 'cook';

select * 
from employees
where job = 'cashier' or job = 'cook';

-- condicion not es igual !=
select * 
from employees
where not job = 'cook' and not job = 'manager';

-- between entre algo y algo
select * 
from employees
where hire_date between '2022-06-04' and '2023-01-07';

-- los que sean...
select * 
from employees
where job in('cook', 'cashier', 'manager');

select * from employees;





