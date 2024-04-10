USE mydb;

WITH TemporalTable AS 
(SELECT * FROM order_details WHERE quantity > 10)
SELECT order_id, AVG (quantity) AS avg_quantity
FROM TemporalTable
GROUP BY order_id;