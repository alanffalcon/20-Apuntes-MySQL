-- Limit: limita la cantidad que se va a mostrar. util cuando se trabaja con mucha data. 
-- limita por id
select * from customers
limit 3;

-- limita por apellido
select * from customers
order by last_name limit 3;

-- devuelve uno despues del segundo
select * from customers
limit 2, 1;