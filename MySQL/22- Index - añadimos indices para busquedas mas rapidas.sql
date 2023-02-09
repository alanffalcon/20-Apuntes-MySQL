-- INDEXES 
-- Es un tipo de data structure (Btree) que se usa para encontrar valores en una columna especifica mas rapido
-- es muy practico en tablas gigantes. 
-- se usa en tablas que no se actualizan seguido por el tiempo que lleva.

select * from customers;

-- mostramos todos los indices
show indexes from customers;

-- creamos un index para apellidos:
create index last_name_idx
on customers(last_name);

-- buscamos a alguien por su index
select * from customers
where last_name = 'Puff';

-- creamos un index multi columnas:
create index last_name_first_name_idx
on customers(last_name, first_name);

-- boramos el index que ya no sirve:
alter table customers
drop index last_name_idx;
