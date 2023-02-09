-- Select todo
select * from employees;

-- select especifico 
select first_name, last_name name from employees;

-- select mas especifico
select * from employees where employee_id != 1;
select * from employees where first_name = 'Veronica';
select * from employees where hourly_pay >= 24;
select * from employees where hire_date >= '2023-01-01';

-- Encontrar nulos:
select * from employees where hire_date is null;
select * from employees where hire_date is not null;
