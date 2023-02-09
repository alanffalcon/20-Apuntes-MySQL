-- subquery
-- una subquery es un query adentro de otro query

select * from employees;

-- comparamos el pago por hora con el promedio. average: promedio
-- subquery = segunda linea
select avg(hourly_pay) from employees;

select first_name, last_name, hourly_pay,
	(select avg(hourly_pay) from employees) as avg_pay
from employees;

-- seleccionamos los empleados cuyo salario supere el promedio. 
select first_name, last_name, hourly_pay
from employees 
where hourly_pay > (select avg(hourly_pay) from employees) ;

-- seleccionamos los clientes sin repetirlos (distinct)alter
select distinct customer_id
from transactions 
where customer_id is not null

-- les agregamos los nombres
select first_name, last_name
from customers
where customer_id in
(select distinct customer_id
from transactions 
where customer_id is not null)









