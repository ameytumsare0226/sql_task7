select * from customers

select * from accounts

select * from branches

	1)--details of customer who's account type is savings 
	
select c.first_name , c.last_name , c.city , c.dob , a.balance , a.account_status
from customers as c
inner join accounts as a
on c.customer_id = a.customer_id
where a.account_type = 'Savings'

	2)--Total Balance by Account Type

select account_type, sum(balance) as total_balance
from accounts
group by account_type

	--3)Number of Accounts by Account Status and Type

select account_status, account_type, count(*) as number_of_accounts
from accounts
group by  account_status, account_type

	--4)Number of Customers per Branch

select b.branch_location, count(*) as customer_count
from customers as c
inner join branches as b 
on c.customer_id = b.branch_id
group by b.branch_location



