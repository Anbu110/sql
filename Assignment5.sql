 --@theplacementsschool1 Problem Statement: You have successfully cleared your fourth semester. In the fifth semester you will work with 
--clauses and SET operators.Tasks To Be Performed:
 --1.Arrange the ‘Orders’ dataset in decreasing order of amount
	select *from orders
	order by amount desc

 
 --2.Create a table with the name ‘Employee_details1’ consisting of these columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. 
  --Create another table with the name ‘Employee_details2’ consisting of the same columns as the first table.
 create table Employee_details1(
 Emp_id int primary key,
 emp_name varchar (100),
 salary decimal(10,2))

 create table Employee_details2(
 Emp_id int primary key,
 emp_name varchar (100),
 salary decimal(10,2))

 INSERT INTO Employee_details1 (Emp_id, Emp_name,salary)
VALUES 
(1, 'Ravi', 30000.00),
(2, 'Anita', 45000.00),
(3, 'Kumar', 50000.00);

-- Insert data into Employee_details2
INSERT INTO Employee_details2 (Emp_id, Emp_name, salary)
VALUES 
(2, 'Anita', 45000.00),
(3, 'Kumar', 50000.00),
(4, 'Meena', 60000.00);

 
 --3.Apply the UNION operator on these two tables
 select emp_id ,emp_name,salary
 from employee_details1
 union
 select emp_id,emp_name,salary
 from employee_details2

-- 4.Apply the INTERSECT operator on these two tables
SELECT Emp_id, Emp_name, salary
FROM Employee_details1
INTERSECT
SELECT Emp_id, Emp_name, salary
FROM Employee_details2

 --5.Apply the EXCEPT operator on these two tables
SELECT Emp_id, Emp_name, salary
FROM Employee_details1
except
SELECT Emp_id, Emp_name, salary
FROM Employee_details2;