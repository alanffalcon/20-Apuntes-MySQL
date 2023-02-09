-- Group by: añade todas las rows de una column. 
	-- se usa con funciones como sum(), min(), avg(), count(), etc.
    
select * from transactions;

-- añadimos columna
alter table transactions
add order_date date;

-- añadimos valores
update transactions 
set order_date = current_date() + 2
where transaction_id = 1002;
	
-- AGRUPAMOS VALORES max maximo, min mas chica, avg promedio, count cuantos
select sum(amount), order_date
from transactions
group by order_date;

-- la cantidad que gasto cada cliente
select sum(amount), customer_id
from transactions
group by customer_id;

-- la orden mas grande que hizo cada cliente
select sum(amount), customer_id
from transactions
group by customer_id;

-- filtramos por los que compraron mas de una vez y su id es no nulo. en vez de where usamos having
select count(amount), customer_id
from transactions
group by customer_id
having count(amount) > 1 and customer_id is not null;



