# E-commerce Database Project

A relational e-commerce database built with **PostgreSQL** to practice database design, relationships, SQL querying, and data analysis.

## Project Overview

This project simulates a simple e-commerce system containing customers, products, categories, orders, and order items.

The goal of the project is to build a relational database and use SQL to answer practical business questions while developing hands-on PostgreSQL skills.

## Database Structure

The database contains five main tables:

* **customers** — stores customer information
* **categories** — stores product categories
* **products** — stores products and their prices
* **orders** — stores customer orders
* **order_items** — stores the products and quantities included in each order

### Relationships

```text
categories
     │
     │ 1-to-many
     ▼
 products
     │
     │ 1-to-many
     ▼
order_items
     ▲
     │
     │ many-to-1
   orders
     ▲
     │
     │ many-to-1
 customers
```


## SQL Concepts Practiced

This project demonstrates practical SQL concepts using PostgreSQL.

### Database Fundamentals
- Database and table creation
- Primary keys and foreign keys
- Relational database design

### Joins
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- `FULL OUTER JOIN`
- `CROSS JOIN`
- `SELF JOIN`
- Multi-table joins

### Aggregate Functions and Filtering
- `COUNT()`
- `SUM()`
- `GROUP BY`
- `IS NULL`
- Aggregate calculations

### Subqueries
- Scalar subqueries
- `IN` and `NOT IN`
- Correlated subqueries
- Derived tables using subqueries in the `FROM` clause

### Common Table Expressions (CTEs)
- Creating CTEs using the `WITH` clause
- Calculating average product prices
- Counting orders per customer
- Filtering customers by order count
- Finding the highest-priced product in each category
- Identifying customers with the highest number of orders



## Window Functions

Practised PostgreSQL window functions to perform calculations across related rows while retaining individual product records.

Topics covered:

- `AVG() OVER (PARTITION BY ...)` — calculate average prices within product categories.
- `ROW_NUMBER()` — assign row numbers within categories.
- `RANK()` and `DENSE_RANK()` — rank products by price within categories.
- `LAG()` and `LEAD()` — compare product prices with preceding and following rows.
- `SUM() OVER (...)` — calculate running totals.
- `FIRST_VALUE()` and `LAST_VALUE()` — retrieve product values from specified positions in a window.
- Window frames using `ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW`.
- Full-partition window frames using `UNBOUNDED FOLLOWING`.

SQL practice file: `queries/window_functions.sql`





## Repository Structure

ecommerce-database/
├── README.md
├── schema.sql
├── sample_data.sql
└── queries/
    ├── 01_inner_join.sql
    ├── 02_left_join.sql
    ├── 03_right_join.sql
    ├── 04_full_outer_join.sql
    ├── 05_cross_join.sql
    ├── 06_self_join.sql
    ├── subqueries.sql
    ├── ctes.sql
    └── window_functions.sql



## Technology

* PostgreSQL
* SQL
* GitHub
* pgAdmin


## Purpose
This is a hands-on learning and portfolio project focused on developing practical SQL and relational database skills.
