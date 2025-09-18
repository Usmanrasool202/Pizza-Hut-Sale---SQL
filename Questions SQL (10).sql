--Determine the top 3 most ordered pizza types based on revenue

SELECT pizza_type.name, SUM(pizzas.price*order_details.quantity) 
AS total_revenue FROM pizza_type
JOIN pizzas on pizzas.pizza_type_id=pizza_type.pizza_type_id
JOIN order_details ON order_details.pizza_id=pizzas.pizza_id
GROUP BY pizza_type.name
ORDER BY total_revenue DESC
limit 3;