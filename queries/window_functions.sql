
-- PostgreSQL Window Functions
-- Project: E-commerce Database

-- 1. Average product price within each category
SELECT
    product_name,
    category_id,
    price,
    AVG(price) OVER (
        PARTITION BY category_id
    ) AS category_avg_price
FROM products;


-- 2. Rank products by price within each category
SELECT
    product_name,
    category_id,
    price,
    RANK() OVER (
        PARTITION BY category_id
        ORDER BY price DESC
    ) AS price_rank,
    DENSE_RANK() OVER (
        PARTITION BY category_id
        ORDER BY price DESC
    ) AS dense_price_rank
FROM products;


-- 3. Assign a row number within each category
SELECT
    product_name,
    category_id,
    price,
    ROW_NUMBER() OVER (
        PARTITION BY category_id
        ORDER BY price DESC, product_name
    ) AS row_num
FROM products;


-- 4. Calculate a row-by-row running total
SELECT
    product_name,
    price,
    SUM(price) OVER (
        ORDER BY price, product_name
        ROWS BETWEEN UNBOUNDED PRECEDING
                 AND CURRENT ROW
    ) AS running_total
FROM products;


-- 5. Compare each price with the previous product's price
SELECT
    product_name,
    price,
    LAG(price) OVER (
        ORDER BY price, product_name
    ) AS previous_price,
    LEAD(price) OVER (
        ORDER BY price, product_name
    ) AS next_price
FROM products;


-- 6. Find the most expensive product in each category
SELECT
    product_name,
    category_id,
    price,
    FIRST_VALUE(product_name) OVER (
        PARTITION BY category_id
        ORDER BY price DESC, product_name
    ) AS most_expensive_product
FROM products;


-- 7. Find the cheapest product in each category
SELECT
    product_name,
    category_id,
    price,
    LAST_VALUE(product_name) OVER (
        PARTITION BY category_id
        ORDER BY price DESC, product_name
        ROWS BETWEEN UNBOUNDED PRECEDING
                 AND UNBOUNDED FOLLOWING
    ) AS cheapest_product
FROM products;
