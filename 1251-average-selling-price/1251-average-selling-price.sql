/* Write your T-SQL query statement below */
SELECT a.product_id, cast(format(((cast(SUM(b.units*a.price)as float))/(cast(SUM(b.units) as float))),'#.##') as float) as average_price
FROM Prices as a
JOIN UnitsSold as b
ON a.product_id = b.product_id AND (b.purchase_date BETWEEN a.start_date AND a.end_date)
GROUP BY a.product_id