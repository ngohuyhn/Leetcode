/* Write your T-SQL query statement below */
select em.event_day as day, em.emp_id, SUM(out_time - in_time) as total_time
from employees as em 
Group by em.event_day, em.emp_id
