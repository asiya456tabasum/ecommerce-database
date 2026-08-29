-- FULL OUTER JOIN
-- FULL OUTER JOIN returns all matching and non-matching rows from both tables.

-- 1. Show all customers and orders, including unmatched records.
SELECT customer_name, order_id
FROM customers
FULL OUTER JOIN orders
    ON customers.customer_id = orders.customer_id;

-- 2. Show all products and categories, including unmatched records.
SELECT category_name, product_name
FROM products
FULL OUTER JOIN categories
    ON products.category_id = categories.category_id;
