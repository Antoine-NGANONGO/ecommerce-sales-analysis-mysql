USE ecommerce_project;

-- 1. Products priced above EUR 50
SELECT product_name, category, price
FROM products
WHERE price > 50
ORDER BY price DESC;

-- 2. Customers and their purchases, newest first
SELECT o.order_id, c.customer_name, p.product_name, o.quantity, o.order_date
FROM orders AS o
INNER JOIN customers AS c ON o.customer_id = c.customer_id
INNER JOIN products AS p ON o.product_id = p.product_id
ORDER BY o.order_date DESC;

-- 3. Top three orders by revenue
SELECT o.order_id, c.customer_name, p.product_name,
       o.quantity, p.price, (o.quantity * p.price) AS revenue
FROM orders AS o
INNER JOIN customers AS c ON o.customer_id = c.customer_id
INNER JOIN products AS p ON o.product_id = p.product_id
ORDER BY revenue DESC, o.order_id ASC
LIMIT 3;

-- 4. Revenue by customer
SELECT c.customer_id, c.customer_name,
       SUM(o.quantity * p.price) AS total_revenue
FROM orders AS o
INNER JOIN customers AS c ON o.customer_id = c.customer_id
INNER JOIN products AS p ON o.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_revenue DESC;

-- 5. Revenue by product
SELECT p.product_id, p.product_name,
       SUM(o.quantity * p.price) AS total_revenue
FROM orders AS o
INNER JOIN products AS p ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;

-- 6. Monthly revenue (January and February 2025)
SELECT YEAR(o.order_date) AS order_year,
       MONTH(o.order_date) AS order_month,
       SUM(o.quantity * p.price) AS total_revenue
FROM orders AS o
INNER JOIN products AS p ON o.product_id = p.product_id
WHERE o.order_date >= '2025-01-01'
  AND o.order_date < '2025-03-01'
GROUP BY YEAR(o.order_date), MONTH(o.order_date)
ORDER BY order_year ASC, order_month ASC;

-- 7. Validation: total revenue and number of orders
SELECT COUNT(*) AS order_count,
       SUM(o.quantity * p.price) AS total_revenue
FROM orders AS o
INNER JOIN products AS p ON o.product_id = p.product_id;
