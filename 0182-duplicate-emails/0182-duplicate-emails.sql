/* Write your T-SQL query statement below */
select pe.email
from Person as Pe 
group by pe.email 
having count(pe.email) > 1