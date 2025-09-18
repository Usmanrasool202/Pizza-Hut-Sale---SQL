--Determine the distribution of orders by hour of the day.


SELECT EXTRACT(HOUR FROM time) AS hour, COUNT(order_id) AS Orders
FROM orders
GROUP BY hour
ORDER BY hour