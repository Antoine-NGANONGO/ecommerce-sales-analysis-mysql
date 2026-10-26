USE ecommerce_project;

INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Anna', 'Warsaw'),
(2, 'Piotr', 'Krakow'),
(3, 'Maria', 'Lodz'),
(4, 'Tomasz', 'Gdansk'),
(5, 'Julia', 'Warsaw');

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 850.00),
(2, 'Mouse', 'Accessories', 25.00),
(3, 'Keyboard', 'Accessories', 60.00),
(4, 'Monitor', 'Electronics', 220.00),
(5, 'Headphones', 'Accessories', 75.00);

INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, 1, '2025-01-05'),
(2, 2, 2, 2, '2025-01-07'),
(3, 3, 3, 1, '2025-01-10'),
(4, 1, 4, 1, '2025-01-12'),
(5, 4, 5, 2, '2025-01-15'),
(6, 5, 2, 3, '2025-02-02'),
(7, 2, 1, 1, '2025-02-05'),
(8, 3, 5, 1, '2025-02-10'),
(9, 1, 3, 2, '2025-02-14'),
(10, 5, 4, 1, '2025-02-20');
