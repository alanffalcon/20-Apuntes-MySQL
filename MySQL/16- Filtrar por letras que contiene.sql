-- wild card characters % _
-- se usan para sustituir caracteres en un string:

select * from employees;

-- todos los nombres que empiecen con f
select * from employees
where first_name like 'f%';

-- todas las fechas 2023
select * from employees
where hire_date like '2023%';

-- nombres que terminen en go
select * from employees
where first_name like '%go';

-- todos los job que contengan una letra seguida por ook
select * from employees
where job like '_ook';

-- todos los meses de mayo
select * from employees
where hire_date like '____-05-__';






