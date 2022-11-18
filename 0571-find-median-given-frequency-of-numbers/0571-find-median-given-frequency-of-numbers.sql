/* Write your T-SQL query statement below */
select  avg(1.0*n.num) median
from Numbers n
where n.Frequency >= abs((select sum(Frequency) from Numbers where num<=n.num) -
                         (select sum(Frequency) from Numbers where num>=n.num))
    