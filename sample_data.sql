-- Sample Data for E-commerce Database

-- Categories
INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing');


-- Customers
INSERT INTO customers (customer_id, customer_name, phone_number, address) VALUES
(1, 'khadijah', '9129129120', 'kulgam'),
(2, 'ibraheem', '3213213210', 'akhran'),
(3, 'daneen', '4324324320', 'anantnag'),
(4, 'fatima', '6546546540', 'khanbal'),
(5, 'ayesha', '9879879887', 'wanpoh'),
(6, 'zainab', '8458458452', 'malpora');


-- Products
INSERT INTO products (product_id, product_name, price, category_id) VALUES
(101, 'Laptop', 6000, 1),
(102, 'Mouse', 1000, 1),
(103, 'Keyboard', 1500, 1),
(104, 'SQL Funadamentals Book', 1000, 2),
(105, 'Python Book', 1500, 2),
(106, 'T-Shirt', 800, 3);


-- Orders
INSERT INTO orders (order_id, customer_id) VALUES
(201, 1),
(202, 2),
(203, 1),
(204, 3),
(205, 4),
(206, 2),
(207, 1),
(208, 5);


-- Order Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(201, 101, 1),
(201, 102, 2),
(202, 104, 1),
(203, 103, 1),
(203, 105, 2),
(204, 106, 3),
(205, 101, 1),
(206, 102, 1),
(207, 105, 1),
(208, 106, 2);
