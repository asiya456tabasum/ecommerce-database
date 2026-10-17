
-- CTE Practice
-- Project: E-commerce Database

-- 1. Find products priced above the overall average price
WITH greater_price_cte AS (
    SELECT product_name, price
    FROM products
    WHERE price > (
        SELECT AVG(price)
        FROM products
    )
)
SELECT product_name, price
FROM greater_price_cte;


-- 2. Count orders for each customer
WITH customer_orders_cte AS (
    SELECT customer_id, COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id, total_orders
FROM customer_orders_cte
ORDER BY customer_id;


-- 3. Find customers who placed more than one order
WITH customer_orders_cte AS (
    SELECT customer_id, COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id, total_orders
FROM customer_orders_cte
WHERE total_orders > 1
ORDER BY customer_id;


-- 4. Find the most expensive product in each category
WITH expensive_cte AS (
    SELECT category_id, MAX(price) AS max_price
    FROM products
    GROUP BY category_id
)
SELECT p.product_name, p.category_id, p.price
FROM products AS p
JOIN expensive_cte AS e
    ON p.category_id = e.category_id
   AND p.price = e.max_price
ORDER BY p.category_id;


-- 5. Find the customer(s) with the highest number of orders
WITH total_orders_cte AS (
    SELECT customer_id, COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id, total_orders
FROM total_orders_cte
WHERE total_orders = (
    SELECT MAX(total_orders)
    FROM total_orders_cte
);
