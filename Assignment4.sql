--1.Use the inbuilt functions and find the minimum, maximum and average amount from the orders table
select
	min(amount)as minninum,
	max(amount) as maximum,
	avg(amount) as avarage
from orders

select *from orders

-- 2.Create a user-defined function which will multiply the given number with 10

create function dbo.fn_multen(@ten int)
returns int
as 
begin
	return @ten*10
end

select dbo.fn_multen(5)


-- 3.Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and print the corresponding value.
select
	case
		when 100<200 then '100 is less then of 200'
		when 100>200 then '100 is greater then of 200'
		else
			'100 is equal to 200'
	end as result


-- 4.Using a case statement, find the status of the amount. Set the status of the amount as high amount, low amount or medium amount based upon the condition.
--Suppose we categorize amount as:
--High → > 400
--Medium → 200–400
--Low → < 200

SELECT order_id, amount,
    CASE 
        WHEN amount > 450 THEN 'High Amount'
        WHEN amount > 250 AND amount <= 400 THEN 'Medium Amount'
        ELSE 'Low Amount'
    END AS AmountStatus
FROM Orders;

-- 5.Create a user-defined function, to fetch the amount greater than then given input

create function dbo.fn_greater(@gen decimal(10,2))
returns table
as
return
	select *from orders
	where amount>@gen
	
select*from dbo.fn_greater(300)




