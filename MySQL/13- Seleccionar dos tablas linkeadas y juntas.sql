-- Join se usa para combinar rows de 2 o mas tablas basados en una columna (foreign key)

-- insertamos un nuevo valor a cada tabla
insert into transactions (amount, customer_id)
values (1.00, null);

insert into customers (first_name, last_name)
values ('Poppy', 'Puff');

select * from customers;

-- Usamos join inner para unir las dos tablas donde las dos tienen valores que coinciden/se linkean entre si. 
select * 
from transactions inner join customers
on transactions.customer_id = customers.customer_id;

-- Embellecemos la seleccion de tabla
select transaction_id, amount, first_name, last_name
from transactions inner join customers
on transactions.customer_id = customers.customer_id;

-- Con left join vamos a desplegar todo de la tabla transactions y de customers solo lo que esta linkeado con esta, 
select transaction_id, amount, first_name, last_name
from transactions left join customers
on transactions.customer_id = customers.customer_id;

-- Con right join vamos a desplegar todo de customers y transactions solo lo que este linkeado
select transaction_id, amount, first_name, last_name
from transactions right join customers
on transactions.customer_id = customers.customer_id;
