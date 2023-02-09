/* AUTOGUARDADO

Desactivar guardado automatico:
set autocommit = off; 
con esto en off hay que guardar ejecutando: Commit;
y para volver al ultimo guardado: rollback;
*/

select * from test

-- Creamos tabla
/*
create table test(
	my_date date,
    my_time time,
    my_datetime datetime
);
*/

-- instertamos valores de ahora:
/*
insert into test
values (current_date(), current_time(), now());
*/

-- instertamos valores de mañana:
/*
insert into test
values (current_date() + 1, null, null);
*/

