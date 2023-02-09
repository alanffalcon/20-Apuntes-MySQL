-- Views:
-- son tablas virtuales basadas en el resultado de una sql statemnet, no son tablas reales pero se puede interactuar con ellas:
-- se actualizan solas cuando se cambia la tabla.

select * from employees;

-- creamos el view
create view employee_attendance as
select first_name, last_name
from employees;

-- seleccionamos la tabla virtual:
select * from employee_attendance;

-- podemos hacer lo mismo que con una tabla real
select * from employee_attendance
order by last_name asc;

-- para elimiar view: 
drop view employee_attendance;



