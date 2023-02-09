-- Foreign Key es una columna que linkea con otra columna igual pero de otra tabla:

-- Creamos tabla
/*
create table customers (
	customer_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50)
);
*/

select * from customers;

-- Insertamos valores:
/*
insert into customers (first_name, last_name)
values 	('Fred', 'Fish'),
		('Larry', 'Lobster'),
        ('Bubble', 'Bass');
*/

-- Creamos y Linkeamos tabla transactions con customers:
/*
create table transactions (
	transaction_id int primary key auto_increment,
    amount decimal(5, 2),
    customer_id int,
    foreign key(customer_id) references customers(customer_id)
);
*/

select * from transactions;

-- Eliminar foreign key:
/*
alter table transactions
drop foreign key transactions_ibfk_1
*/

-- Añadir foreign key:
/*
alter table transactions
add constraint fk_customer_id 
foreign key(customer_id) references customers(customer_id); 
*/

-- Seteamos el auto incremento
alter table transactions
auto_increment = 1000;

-- añadimos valores
insert into transactions (amount, customer_id)
values 	(4.35, 3),
		(3.56, 2),
		(2.98, 1), 
		(1.79, 3);

select * from customers;
select * from transactions;











