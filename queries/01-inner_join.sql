-- INNER JOIN
-- INNER JOIN returns only the rows where a matching record exists in both tables.


-- 1. Display each customer's name along with their order ID.
SELECT customer_name, order_id
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id;


-- 2. Display the order ID, product name, and quantity for products included in orders.
SELECT product_name, order_id, quantity
FROM order_items
INNER JOIN products
    ON order_items.product_id = products.product_id;


-- 3. Display each product name along with its category name.
SELECT product_name, category_name
FROM products
INNER JOIN categories
    ON products.category_id = categories.category_id;
