select * from products

-- Los valores default son los que se agregan automaticamente si no los especificamos.

-- Agregar default a una tabla:
/*
alter table products
alter price set default -1;
*/

-- Crear table con valores default
/*
create table employees (
	product_id int,
    product_name varchar(25),
    price varchar(50) default 0
);
*/

-- Probamos
/*
insert into products (product_id, product_name)
values (104, 'straw');
*/

-- Creamos tabla de transacciones
create table transactions(
	transaction_id int,
    amount decimal(5, 2),
    transaction_date datetime default now()
);

select * from transactions;

insert into transactions (transaction_id, amount)
values (1, 4.99);







