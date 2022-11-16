/* Write your T-SQL query statement below */ -- Group colume Email rồi count những địa chỉ mail xuất hiện nhiều hơn 1 lần
select pe.email
from Person as Pe 
group by pe.email 
having count(pe.email) > 1
