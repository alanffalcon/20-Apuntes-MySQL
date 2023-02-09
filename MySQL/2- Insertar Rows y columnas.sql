select * from employees

-- Insertamos Rows (date: yyyy-mm-dd)
/*
insert into employees
values(1, 'Alan', 'Falcon', 'alan.f.falcon@gmail.com', 25.50, '2023-01-02');
*/

-- Insertear varios rows: 
/*
insert into employees
values	(2, 'Rodrigo', 'Monzon', 'rodriMonzon@gmail.com', 27.30, '2023-02-15'),
		(3, 'Facundo', 'Lopez', 'camisosa@gmail.com', 22.60, '2022-05-16'),
        (4, 'Manuela', 'Gonzales', 'manuelagon98@gmail.com', 21.80, '2022-10-08'),
        (5, 'Camila', 'Sosa', 'camila_sosa1996@gmail.com', 28.40, '2022-04-06');
  */      

-- Insertar valores especificos
/*
insert into employees (employee_id, first_name, last_name)
values(6, 'Veronica', 'Alarcon');
*/

-- añadimos columna
/*
alter table customers
add referral_id int;
*/