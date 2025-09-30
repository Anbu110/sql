create table Salesman
(
SalesmanId int ,
SalesmanName varchar(100),
commission int ,
city varchar(100),
Age int )


insert into salesman
values(101,'joe',50,'californiya',17),
(102,'Simon',75,'Texas',25),
(103,'jessie',105,'Florida',35),
(104,'Danny',100,'Texas',32),
(105,'Lia',65,'new jersy',30)

select *from salesman

create table customers
(
SalesmanId int ,
customerId int,
customerName varchar(100),
purchaseAmount int)


insert into customers
values(101,2345,'Andrew',550),
(103,1575,'Lucky',4500),
(104,2345,'Andrew',4000),
(107,3747,'Remona',2700),
(110,4004,'Julia',4545)

create table orders1
(
OrderId int ,
customerid int,
salesmanid int, 
orderdate date,
amount int)


insert into orders1
values(5001,2345,101,'2021-07-04',550),
(5003,1234,105,'2022-02-15',1500)


 --Insert a new record in your Orders table.
 insert into orders1
 values(5004,1675,106,'2021-03-18',7000)


--Add Primary key constraint for SalesmanId column in Salesman table. Add default 
--constraint for City column in Salesman table. Add Foreign key constraint for SalesmanId 
--column in Customer table. Add not null constraint in Customer_name column for the Customer table.

ALTER TABLE Salesman
ADD CONSTRAINT PK_Salesman PRIMARY KEY (SalesmanId)

ALTER TABLE Salesman
ADD CONSTRAINT DF_Salesman_City DEFAULT 'Unknown' FOR City;

ALTER TABLE Customer
ADD CONSTRAINT FK_Customer_Salesman FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId);

ALTER TABLE Customer
ALTER COLUMN Customer_name VARCHAR(100) NOT NULL;


SELECT c.customer_id, c.customer_name, o.amount
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE c.customer_name LIKE '%N'
  AND o.amount > 500;


SELECT SalesmanId FROM Salesman
UNION
SELECT SalesmanId FROM Customer;

SELECT SalesmanId FROM Salesman
UNION ALL
SELECT SalesmanId FROM Customer;


SELECT 
    o.order_date,
    s.SalesmanName,
    c.Customer_name,
    s.Commission,
    s.City,
    o.amount
FROM Orders o
JOIN Customer c ON o.customer_id = c.customer_id
JOIN Salesman s ON c.SalesmanId = s.SalesmanId
WHERE o.amount BETWEEN 500 AND 1500;


SELECT 
    s.SalesmanId, 
    s.SalesmanName, 
    s.City, 
    o.order_id, 
    o.order_date, 
    o.amount
FROM Salesman s
RIGHT JOIN Orders o
ON s.SalesmanId = o.customer_id;
