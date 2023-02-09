select * from products

-- Crear una tabla donde no se pueda poner null:
/*
create table products (
	product_id int,
    product_name varchar(50),
    price decimal(4, 2) not null
);
*/

-- Añadir not null a una tabla existente:
/*
alter table products
modify price decimal(4, 2) not null;
*/

-- Precio puede ser cero pero no null:
insert into products values (104, 'cookie', null);

