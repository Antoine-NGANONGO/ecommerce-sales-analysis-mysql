# E-commerce Sales Analysis with MySQL

## Overview
This beginner-friendly SQL portfolio project analyzes sales for a **fictional** online store using MySQL 8.0+. The sample data is manually created for learning purposes; it is **not real customer or business data**.

## Business questions
- Which products cost more than €50?
- Which customers bought which products?
- What were the top three orders by revenue?
- Which customers and products generated the most revenue?
- How did revenue compare between January and February 2025?

## Database design
- `customers(customer_id, customer_name, city)`
- `products(product_id, product_name, category, price)`
- `orders(order_id, customer_id, product_id, quantity, order_date)`

`orders.customer_id` references `customers.customer_id`; `orders.product_id` references `products.product_id`. Each order contains one product type, possibly with multiple units. Revenue is `quantity * price`; discounts, refunds, taxes, shipping, and price changes are not modeled.

## How to run
1. Open MySQL Workbench connected to a MySQL 8.0+ server.
2. Run `sql/01_create_tables.sql`.
3. Run `sql/02_insert_data.sql` **once on an empty database**. Running it again without clearing the sample rows will cause duplicate-primary-key errors.
4. Run `sql/03_sales_analysis.sql` to see the analysis and validation query.

If you already have a database with these tables, use a fresh database or carefully reconcile existing data before running the seed script. Do not delete existing data blindly.

## Expected results for the supplied fictional data
- 5 customers, 5 products, 10 orders.
- Total revenue: **€2,670**.
- January 2025: **€1,330**; February 2025: **€1,340**.
- Highest-revenue product: **Laptop (€1,700)**.
- Highest-spending customer: **Anna (€1,190)**.

These values are expected from the supplied sample data; verify them by running the SQL scripts in your own MySQL instance.

## Skills demonstrated
`CREATE TABLE`, primary/foreign keys, `INSERT`, `SELECT`, `WHERE`, `INNER JOIN`, `SUM`, `GROUP BY`, `ORDER BY`, `LIMIT`, `YEAR`, and `MONTH`.

## Limitations and next steps
The dataset is very small and fictional, so findings are demonstrations, not evidence about actual e-commerce behavior. A future iteration could include order items, real-world data, returns, discounts, and dashboards.

## AI assistance
AI helped structure the project, prepare SQL scripts, and draft documentation. The author should execute, inspect, and be able to explain the queries before presenting the project as validated portfolio work.
