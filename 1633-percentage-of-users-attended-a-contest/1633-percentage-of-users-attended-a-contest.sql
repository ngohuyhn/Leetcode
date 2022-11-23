/* Write your T-SQL query statement below */
SELECT contest_id
    , ROUND(cast(COUNT(DISTINCT user_id) * 100 as float) / (SELECT COUNT(*) FROM Users), 2 ) AS percentage
FROM Register 
GROUP BY contest_id
    ORDER BY percentage DESC, contest_id