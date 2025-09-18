--Calculate the total revenue generated from pizza sales.

SELECT round(sum(order_details.quantity*pizzas.price)) 
as "Total_Revenue" FROM order_details
JOIN pizzas ON pizzas.pizza_id=order_details.pizza_id;
