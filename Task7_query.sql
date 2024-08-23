select * from customer

select * from product

select * from sales

--1) create a report of all state sales, quantity, discount , profit  with following aggrigation 
-- sum , avg, min , max, count

	--SUM
	
select c.state , sum(s.sales) as Total_sales , sum(s.quantity) as Total_quantity  ,  
sum(s.discount) as Total_discount , sum(s.profit) as Total_profit
from customer as c
inner join sales as s
on c.customer_id = s.customer_id
group by c.state
	
	--AVG
	
select c.state , avg(s.sales) as Average_sales , avg(s.quantity) as Average_quantity  ,  
avg(s.discount) as Average_discount , avg(s.profit) as Average_profit
from customer as c
inner join sales as s
on c.customer_id = s.customer_id
group by c.state

	--MIN

select c.state , min(s.sales) as Minimum_sales , min(s.quantity) as Minimum_quantity  ,  
min(s.discount) as Minimum_discount , min(s.profit) as Minimum_profit
from customer as c
inner join sales as s
on c.customer_id = s.customer_id
group by c.state

	--MAX

select c.state , max(s.sales) as Maximum_sales , max(s.quantity) as Maximum_quantity  ,  
max(s.discount) as Maximum_discount , max(s.profit) as Maximum_profit
from customer as c
inner join sales as s
on c.customer_id = s.customer_id
group by c.state

	--COUNT

select c.state , count(s.sales) as count_sales , count(s.quantity) as count_quantity  ,  
count(s.discount) as count_discount , count(s.profit) as count_profit
from customer as c
inner join sales as s
on c.customer_id = s.customer_id
group by c.state


-- 2) get data of all state and city's avg customer age 

select c.state , c.city ,avg(c.age)
from customer as c
group by c.state , c.city
order by avg(c.age)


-- 3) get data of 2017 to 2018  with product name and sales per quantity 

select p.product_name , s.order_date , sum(s.sales) / sum(s.quantity) as sales_per_quantity
from product as p
Inner join sales as s
on p.product_id = s.product_id
where s.order_date between '2017-1-1' and '2018-12-31'
group by p.product_name ,  s.order_date 


-- 4) create 4 question on your data like above and solve


