CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(10)
);

--2.Insert 5 new records into the table
INSERT INTO customer (customer_id, first_name, last_name, email, address, city, state, zip)
VALUES
(1, 'George', 'Anderson', 'george@gmail.com', '123 Main St', 'San Jose', 'CA', '95101'),
(2, 'Grace', 'Miller', 'grace@yahoo.com', '456 Elm St', 'San Jose', 'CA', '95102'),
(3, 'David', 'Garcia', 'david@gmail.com', '789 Oak St', 'Los Angeles', 'CA', '90001'),
(4, 'Gina', 'Lopez', 'gina@gmail.com', '321 Pine St', 'San Jose', 'CA', '95103'),
(5, 'Michael', 'Sofia', 'michael@outlook.com', '654 Maple St', 'San Diego', 'CA', '92101');


select*from customer
 --3.Select only the ‘first_name’ and ‘last_name’ columns from the customer table

 select first_name,last_name
 from customer


 --4.Select those records where ‘first_name’ starts with “G” and city is ‘San Jose’.
 
 select * from customer
 where first_name like 'G%' and city='san jose'

 --5.Select those records where Email has only ‘gmail’.
 select *from customer
 where email like '%gmail%'



 --6.Select those records where the ‘last_name’ doesn't end with “A”

 select *from customer
 where last_name not like '%A'