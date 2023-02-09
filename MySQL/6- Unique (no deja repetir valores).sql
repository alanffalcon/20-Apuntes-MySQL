select * from products

-- Con el unic no podemos incertar dos valores iguales:
-- el decimal le da max 4 cifras y max 2 decimales. 
/*
create table products (
	product_id int,
    product_name varchar(50) unique,
    price decimal(4, 2)
);
*/
-- Insertar unique en tabla creada
/*
alter table products
add constraint
unique(product_id);
*/

-- Insertamos values (no se pueden repetidos en los unique)
/*
insert into products 
values 	(100, 'hamburguer', 3.99),
		(101, 'fries', 1.89),
        (102, 'soda', 1.00),
        (103, 'ice cream', 1.75);
*/