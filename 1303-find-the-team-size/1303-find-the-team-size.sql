/* Write your T-SQL query statement below */
with cte as (
select team_id, count(team_id) as team_size
from Employee
group by team_id
)
select employee_id, cte.team_size
from employee as e
    left join cte
    on e.team_id = cte.team_id
