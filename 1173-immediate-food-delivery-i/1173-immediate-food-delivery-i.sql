/* Write your T-SQL query statement below */
select round( (cast(a.immediate as float)/ b.total  *100 ), 2) as immediate_percentage from
(select count(*) as immediate from delivery where order_date = customer_pref_delivery_date) as a,
(select count(*) as total from delivery) as b