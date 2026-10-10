
-- 1. Products priced above the overall average
SELECT product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

-- 2. Products priced below the overall average
SELECT product_name, price
FROM products
WHERE price < (
    SELECT AVG(price)
    FROM products
);

-- 3. Customers who have placed orders
SELECT customer_name, customer_id
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);

-- 4. Customers who have never placed orders
SELECT customer_name, customer_id
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM orders
);

-- 5. Most expensive product
SELECT product_name, price
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products
);

-- 6. Customers with more than one order
-- Using a derived subquery without JOIN
SELECT customer_name, customer_id
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM (
        SELECT customer_id,
               COUNT(order_id) AS order_count
        FROM orders
        GROUP BY customer_id
    ) AS count_order
    WHERE order_count > 1
);

-- 7. Products priced above their category average
-- Using a derived subquery without JOIN
SELECT product_name, price, category_id
FROM products p
WHERE price > (
    SELECT avg_price
    FROM (
        SELECT category_id,
               AVG(price) AS avg_price
        FROM products
        GROUP BY category_id
    ) AS category_avg
    WHERE category_avg.category_id = p.category_id
);
