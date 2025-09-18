--Calculate the percentage contribution of each pizza type to total revenue.

SELECT pizza_type.category, ROUND(SUM(pizzas.price*order_details.quantity)
	/(SELECT SUM(order_details.quantity*pizzas.price)
AS Total_Revenue FROM order_details
JOIN pizzas ON pizzas.pizza_id=order_details.pizza_id)*100) 
AS total_revenue_in_per FROM pizza_type
JOIN pizzas on pizzas.pizza_type_id=pizza_type.pizza_type_id
JOIN order_details ON order_details.pizza_id=pizzas.pizza_id
GROUP BY pizza_type.category
ORDER BY total_revenue_in_per DESC
LIMIT 3;
