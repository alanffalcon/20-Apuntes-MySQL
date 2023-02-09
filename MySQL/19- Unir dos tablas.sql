-- Union combina los resultados de dos o mas Select
/*
create table income (
    income_name VARCHAR(50),
    amount DECIMAL(5, 2)
);

insert into income
values	('orders', 100.00),
		('merchandise', 500.00),
        ('services', 125.00)
        
create table expenses (
	expense_name VARCHAR(50),
	amount DECIMAL(5, 2)
);

insert into expenses
values	('wages', 950),
		('merchandise', 500),
        ('services', 110);
        
select * from income;
select * from expenses;
*/

-- Unimos amboss tablas para combinar ingresos y gastos (solo se puede si tienen la misma cantidad de columnas)
select * from income
union 
select * from expenses;

-- (solo se puede si tienen la misma cantidad de columnas)
select * from employees
union
select * from customers;

-- se puede si aclaramos que:
select first_name, last_name from employees
union
select first_name, last_name from customers;

-- union all une todo aunque encuentre duplicados.
select first_name, last_name from employees
union all
select first_name, last_name from customers;



