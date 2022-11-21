/* Write your T-SQL query statement below */
select case when from_id < to_id then from_id else to_id end as person1,
case when from_id > to_id then from_id else to_id end as person2,
count(*) as call_count,
SUM(duration) as total_duration
from calls
group by 
case when from_id < to_id then from_id else to_id end,
case when from_id > to_id then from_id else to_id end 