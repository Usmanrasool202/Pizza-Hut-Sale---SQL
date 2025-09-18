--Identify the most common pizza size ordered.

SELECT pizzas.size, COUNT(order_details.order_details_id) 
as "Total Ordered" FROM pizzas
JOIN order_details on order_details.pizza_id=pizzas.pizza_id
GROUP BY size;