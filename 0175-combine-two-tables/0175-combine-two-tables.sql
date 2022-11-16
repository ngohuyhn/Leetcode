/* Write your T-SQL query statement below */
Select pe.firstName, pe.lastName, ad.city, ad.state 
from Person as Pe
    Left join Address as ad 
    ON pe.personId = ad.personId
