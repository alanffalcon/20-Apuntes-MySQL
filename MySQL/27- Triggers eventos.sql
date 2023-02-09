-- trigger = cuando ocurre un evento hace algo
-- por ejemplo (insert, update, delete) check data, handles errors, auditing tables...

select * from employees;

-- añadimos columna salario
alter table employees
add column salary decimal(10, 2) after hourly_pay;

-- añadimos salarios por año
update employees
set salary = hourly_pay * 2080;

-- CREAMOS TRIGGER para cuando cambien el pago por hora
create trigger before_hourly_pay_update
before update on employees
for each row
set new.salary = (new.hourly_pay * 2080);


-- ver triggers
show triggers;

select * from employees;

-- probamos el trigger
update employees
set hourly_pay = 50
where employee_id = 1;

-- aumentamos en uno el salario de todos
update employees
set hourly_pay = hourly_pay + 1;

select * from employees;

-- CREAMOS UN TRIGGER PARA CALCULAR SALARIO CUANDO SE INGRESE UN EMPLEADO
create trigger before_hourly_pay_insert
before insert on employees
for each row
set new.salary = (new.hourly_pay * 2080);

-- prueba insertamos empleado
insert into employees
values(6, 'Tomas', 'Benitez', 'tb@gmail.com', 18.36, null, 'janitor', '2023-01-07', 5);

select * from employees;

-- creamos tabla expensas
create table expenses2(
	expense_id int primary key,
    expense_name varchar(50),
    expense_total decimal(10, 2)
);

-- insertamos valores
insert into expenses2
values 	(1, 'salaries', 0),
		(2, 'supplies', 0),
		(3, 'taxes', 0);

select * from expenses2;

-- ponemos valor a salarios sumando todos los salarios
update expenses2
set expense_total = (select sum(salary) from employees)
where expense_name = 'salaries';

-- creamos trigger para que salario total se actualice al echar empleado
create trigger after_salary_delete
after delete on employees
for each row
update expenses2
set expense_total = expense_total - old.salary
where expense_name = 'salaries'; 

-- probamos
delete from employees
where employee_id = 6;

select * from expenses2;

-- creamos trigger para que salario total se actualice al contratar empleado
create trigger after_salary_insert
after insert on employees
for each row
update expenses2
set expense_total = expense_total + new.salary
where expense_name = 'salaries'; 

-- probamos
insert into employees 
values(6, 'Tomas', 'Benitez', 'tbenitez@gmail.com', 18.33, null, 'janitor', '2023-01-08', 5);

select * from expenses2;
select * from employees;

-- creamos trigger para que salario total se actualice al cambiar salario de uno
create trigger after_salary_update
 after update on employees
for each row
update expenses2
set expense_total = expense_total + (new.salary - old.salary)
where expense_name = 'salaries'; 

-- probamos
update employees 
set hourly_pay = 54
where employee_id = 6;

select * from expenses2;
select * from employees;




