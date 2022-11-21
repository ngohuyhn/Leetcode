/* Write your T-SQL query statement below */
/* select 
case when from_id < to_id then from_id else to_id end as person1,
case when from_id > to_id then from_id else to_id end as person2,
count(*) as call_count,
SUM(duration) as total_duration
from calls
group by 
case when from_id < to_id then from_id else to_id end,
case when from_id > to_id then from_id else to_id end  */

SELECT
	CASE WHEN from_id < to_id THEN from_id
	ELSE to_id END AS person1,
	CASE WHEN from_id > to_id THEN from_id
	ELSE to_id END as person2,
	COUNT(*) AS call_count,
	SUM(duration) AS total_duration
FROM
    Calls
GROUP BY
    CASE WHEN from_id < to_id THEN from_id
	ELSE to_id END,
    CASE WHEN from_id > to_id THEN from_id
	ELSE to_id END