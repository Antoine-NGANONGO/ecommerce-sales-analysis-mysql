# E-commerce Sales Analysis with MySQL

## Overview
This is a beginner-friendly SQL portfolio project analyzes sales for a **fictional** online store using MySQL 8.0+. The sample data is manually created for learning purposes; it is **not real customer or business data**.

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

## Expected results for the supplied fictional data
- 5 customers, 5 products, 10 orders.
- Total revenue: **€2,670**.
- January 2025: **€1,330**; February 2025: **€1,340**.
- Highest-revenue product: **Laptop (€1,700)**.
- Highest-spending customer: **Anna (€1,190)**.

## Skills demonstrated
`CREATE TABLE`, primary/foreign keys, `INSERT`, `SELECT`, `WHERE`, `INNER JOIN`, `SUM`, `GROUP BY`, `ORDER BY`, `LIMIT`, `YEAR`, and `MONTH`.

## Limitations and next steps
The dataset is very small and fictional, so findings are demonstrations, not evidence about actual e-commerce behavior. A future iteration could include order items, real-world data, returns, discounts, and dashboards.

