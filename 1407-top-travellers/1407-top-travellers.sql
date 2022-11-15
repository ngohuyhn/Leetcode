/* Write your T-SQL query statement below */
with temp as 
(
select u.id, u.name, 
        sum(
            case 
                when u.id = r.user_id then distance
                else 0 
            end
        ) as travelled_distance
from users as u
    left join rides as r
on u.id = r.user_id
group by u.name, u.id
)
select temp.name, temp.travelled_distance
from temp 
order by temp.travelled_distance desc, temp.name asc