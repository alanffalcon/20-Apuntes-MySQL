-- Ordenar por apellidos (por abecedario)
select * from employees
order by last_name;

-- Ordenar por apellidos al revez
select * from employees
order by last_name desc;

-- Ordenar por fecha
select * from employees
order by hire_date;

-- Ordenar por amount + una condicion
select * from transactions
order by amount, customer_id;

select * from transactions
