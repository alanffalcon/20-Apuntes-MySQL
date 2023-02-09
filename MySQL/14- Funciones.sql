-- Funciones: hay muchas y aparecen en la documentacion en internet

-- count cuantas row tiene una columna. hay 5 transacciones en transactions
select count(amount) as 'Today transactions'
from transactions;

-- Maximo valor de las transacciones (transaccion mas grande)
select max(amount) 
from transactions;

-- transaccion mas chica
select min(amount) 
from transactions;

-- transaccion promedio (average)
select avg(amount) 
from transactions;

-- suma de las transacciones:
select sum(amount) 
from transactions;

-- combinamos first name con last name en una columna con una funcion
select concat(first_name, ' ', last_name) as full_name
from employees;

select * from employees;






