--1.Create an ‘Orders’ table which comprises of these columns: order_id’, ‘order_date’, ‘amount’, ‘customer_id’
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    customer_id INT
);

-- 2.Insert 5 new records
INSERT INTO Orders (order_id, order_date, amount, customer_id)
VALUES
(101, '2025-09-01', 250.00, 1),
(102, '2025-09-02', 500.00, 2),
(103, '2025-09-03', 150.00, 3),
(104, '2025-09-04', 300.00, 2),
(105, '2025-09-05', 450.00, 4);


select* from customer
select* from Orders

--inner join
select c.customer_id,c.first_name,c.last_name,o.order_id,o.order_date,o.amount
from customer as c
inner join orders as o
on c.customer_id=o.customer_id

--left join

select c.customer_id,c.first_name,c.last_name,o.order_id,o.order_date,o.amount
from customer as c
left join orders as o
on c.customer_id=o.customer_id

--rihght join

select c.customer_id,c.first_name,c.last_name,o.order_id,o.order_date,o.amount
from customer as c
right join orders as o
on c.customer_id=o.customer_id

--full outerjoin
select c.customer_id,c.first_name,c.last_name,o.order_id,o.order_date,o.amount
from customer as c
full outer join orders as o
on c.customer_id=o.customer_id

-- .Update the ‘Orders’ table and set the amount to be 100 where ‘customer_id’ is 3.

update orders
set amount=100
where customer_id=3

select *from orders


