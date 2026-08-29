-- LEFT JOIN
-- LEFT JOIN returns all rows from the left table and matching rows from the right table.

-- 1. Display all customers along with their orders, including customers with no orders.
SELECT customer_name, order_id
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id;

-- 2. Find customers who have never placed an order.
SELECT customer_name
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL;

-- 3. Display every category and the products belonging to it.
SELECT category_name, products.product_name
FROM categories
LEFT JOIN products
    ON categories.category_id = products.category_id;

-- 4. Show every customer and the total number of orders they have placed.
SELECT customer_name,
       COUNT(orders.order_id) AS total_number_of_orders
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customer_name;

-- 5. Show every customer and the products they ordered.
SELECT customer_name, product_name
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
LEFT JOIN order_items
    ON orders.order_id = order_items.order_id
LEFT JOIN products
    ON order_items.product_id = products.product_id;

-- 6. Show every category, its products, and the total quantity ordered for each product.
SELECT category_name,
       products.product_name,
       SUM(order_items.quantity) AS total_quantity
FROM categories
LEFT JOIN products
    ON categories.category_id = products.category_id
LEFT JOIN order_items
    ON products.product_id = order_items.product_id
GROUP BY category_name, product_name;

-- 7. Find categories that have no products.
SELECT category_name
FROM categories
LEFT JOIN products
    ON categories.category_id = products.category_id
WHERE product_id IS NULL;

-- 8. Show every customer and the total value of their orders.
SELECT customer_name,
       SUM(order_items.quantity * products.price) AS total_value_of_their_orders
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
LEFT JOIN order_items
    ON orders.order_id = order_items.order_id
LEFT JOIN products
    ON order_items.product_id = products.product_id
GROUP BY customer_name;
