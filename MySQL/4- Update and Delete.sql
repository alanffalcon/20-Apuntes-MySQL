select * from employees;

-- Update:
-- update employees set hourly_pay = 10.25 where employee_id = 6;

-- Update varios:
/*
update employees 
set hourly_pay = 10.50,
	hire_date = '2023-01-07'
where employee_id = 6;
*/

-- Poner null
/*
update employees 
set hourly_pay = null
where employee_id = 6;
*/

-- Delete todas las rows:
-- delete from employees;

-- Delete una row
delete from employees where employee_id = 6;



