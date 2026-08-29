-- RIGHT JOIN
-- RIGHT JOIN returns all rows from the right table and matching rows from the left table.

-- 1. Find categories that have no products.
SELECT category_name, product_name
FROM products
RIGHT JOIN categories
    ON products.category_id = categories.category_id
WHERE product_name IS NULL;
