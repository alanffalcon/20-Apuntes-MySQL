-- Auto Incremento en tabla:
create table transactions(
	transaction_id int primary key auto_increment,
    amount decimal(5, 2)
);

select * from transactions;

-- insertamos solo amount
insert into transactions (amount)
values(44.59)

-- hacemos que el auto increment empiece en un numero distinto:
alter table transactions
auto_increment = 1000;