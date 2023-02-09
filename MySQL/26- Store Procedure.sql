-- stored procedure = es para guardar codigo sql

-- llamar sp
call get_customers();

-- crear sp. delimeter deja que no importe el ; y luego vuelva a importar
delimiter $$
create procedure get_customers()
begin
	select distinct first_name, last_name
	from transactions
	inner join customers
	on transactions.customer_id = customers.customer_id;
end $$
delimiter ;

-- borrar sp
drop procedure get_customers;

-- enviar date en sp. buscamos customer por id
delimiter $$
create procedure find_customer(in id int)
begin
	select * 
    from customers
    where customer_id = id;
end $$
delimiter ;

-- llamamos
call find_customer(1);

-- otra vez mas especifico
delimiter $$
create procedure find_client(in f_name varchar(50),
							in l_name varchar(50))
begin
	select * 
    from customers
    where first_name = f_name and last_name = l_name;
end $$
delimiter ;

-- llamamos
call find_client('Fred', 'Fish');



