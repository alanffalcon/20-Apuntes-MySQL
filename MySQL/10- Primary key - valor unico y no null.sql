-- primary key: se da a una columna cuyo valor tiene que ser unico y no null; solo uno por tabla

-- tabla con primary key
/*
create table transactions(
	transaction_id int primary key,
    amount decimal(5, 2)
);
*/

-- añadimos a tabla existente
/*
alter table transactions
add constraint
primary key(transaction_id);
*/

select * from transactions

insert into transactions
values (1001, 3.38);

