-- ============================================
-- SUBQUERIES PRACTICE
-- ============================================

-- 1. Scalar Subquery
-- Find the product(s) with the highest price

SELECT product_name
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products
);


-- 2. IN
-- Find products belonging to the Electronics category

SELECT product_name
FROM products
WHERE category_id IN (
    SELECT category_id
    FROM categories
    WHERE category_name = 'Electronics'
);


-- 3. NOT IN
-- Find products NOT belonging to the Electronics category

SELECT product_name
FROM products
WHERE category_id NOT IN (
    SELECT category_id
    FROM categories
    WHERE category_name = 'Electronics'
);


-- 4. EXISTS
-- Find customers who have placed at least one order

SELECT customer_name
FROM customers
WHERE EXISTS (
    SELECT orders.order_id
    FROM orders
    WHERE orders.customer_id = customers.customer_id
);


-- 5. NOT EXISTS
-- Find customers who have not placed any order

SELECT customer_name
FROM customers
WHERE NOT EXISTS (
    SELECT orders.order_id
    FROM orders
    WHERE orders.customer_id = customers.customer_id
);


-- 6. Correlated Subquery
-- Find the most expensive product in each category

SELECT product_name, price
FROM products A
WHERE price = (
    SELECT MAX(B.price)
    FROM products B
    WHERE A.category_id = B.category_id
);


-- 7. Correlated Subquery with AVG
-- Find products priced below their category average

SELECT product_name, price
FROM products A
WHERE price < (
    SELECT AVG(B.price)
    FROM products B
    WHERE A.category_id = B.category_id
);


-- 8. ANY
-- Find products more expensive than at least one
-- Computer Accessories product

SELECT product_name
FROM products
WHERE price > ANY (
    SELECT price
    FROM products
    JOIN categories
        ON products.category_id = categories.category_id
    WHERE category_name = 'Computer Accessories'
);


-- 9. ALL
-- Find products more expensive than every
-- Computer Accessories product

SELECT product_name
FROM products
WHERE price > ALL (
    SELECT price
    FROM products
    JOIN categories
        ON products.category_id = categories.category_id
    WHERE category_name = 'Computer Accessories'
);


-- 10. Subquery in FROM
-- Create a temporary result containing products
-- priced above 100

SELECT *
FROM (
    SELECT product_name, price
    FROM products
    WHERE price > 100
) AS result;


-- 11. Scalar Subquery with AVG
-- Find products whose price is above the overall average

SELECT product_name
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);
