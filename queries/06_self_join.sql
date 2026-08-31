-- SELF JOIN
-- A SELF JOIN joins a table with itself using different aliases.

-- 1. Find pairs of products with the same price.
SELECT A.product_name AS p1,
       B.product_name AS p2
FROM products A
JOIN products B
    ON A.price = B.price
    AND A.product_id < B.product_id;


-- 2. Find pairs of products where one costs more than another.
SELECT A.product_name AS p1,
       B.product_name AS p2
FROM products A
JOIN products B
    ON A.price > B.price;


-- 3. Find pairs of products from the same category, shown only once.
SELECT A.product_name AS p1,
       B.product_name AS p2
FROM products A
JOIN products B
    ON A.category_id = B.category_id
    AND A.product_id < B.product_id;


-- 4. Find pairs of products from the same category
-- where one product costs more than the other.
SELECT A.product_name AS p1,
       B.product_name AS p2
FROM products A
JOIN products B
    ON A.category_id = B.category_id
    AND A.price > B.price;
