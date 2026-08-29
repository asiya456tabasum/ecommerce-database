-- CROSS JOIN
-- CROSS JOIN returns every possible combination of rows from both tables.

-- 1. Generate every possible combination of customers and categories.
SELECT customer_name, category_name
FROM customers
CROSS JOIN categories;
