-- roll up 
-- es una extension de group by
-- produce una nueva row que muesta un grand total (super-aggregate value)

select sum(amount), order_date
from transactions
group by order_date with rollup;

select count(transaction_id), order_date
from transactions
group by order_date with rollup;.

-- cantidad de ordenes por cliente
select count(transaction_id) as '# of orders', customer_id
from transactions
group by customer_id with rollup;

select * from employees;

-- cuanto se le paga a cada empleado
select sum(hourly_pay) as 'hourly pay', employee_id
from employees
group by employee_id with rollup;

