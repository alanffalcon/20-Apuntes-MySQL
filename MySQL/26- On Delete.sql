-- on delete set null = cuando un fk es borrado, remplaza el fk con null
-- on delete cascade = cuando un fk es borrado, borra el row

-- por ej. cuando borramos un customer asociado a una transaccion (foreign key) lo que pasa en la transaccion depende del on delete

select * from transactions;

-- creando tabla
/*
create table transactions (
	transaction_id INT, 
    amount VARCHAR(50),
    customer_id VARCHAR(50),
    order_date DECIMAL(5, 2),
    foreign key (customer_id) references customers(customer_id)
    on delete set null
);
*/

-- modificando tabla
alter table transactions drop foreign key fk_customer_id;

-- agregando on delete
alter table transactions
add constraint fk_customer_id
foreign key(customer_id) references customers(customer_id)
on delete set null;

-- ON DELETE CASCADE
alter table transactions drop foreign key fk_customer_id;

alter table transactions
add constraint fk_transactions_id
foreign key(customer_id) references customers(customer_id)
on delete cascade;


