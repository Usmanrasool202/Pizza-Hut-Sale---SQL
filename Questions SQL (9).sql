--Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT ROUND(AVG(ordered_per_day)) AS Average_order_per_day
FROM (
	SELECT orders.date, SUM(order_details.quantity) AS ordered_per_day 
	FROM orders
	JOIN order_details ON order_details.order_id=orders.order_id
	GROUP BY orders.date ) 
AS order_per_day;