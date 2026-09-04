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

This project currently demonstrates:

* Database and table creation
* Primary keys
* Foreign keys
* Relational database design
* `INNER JOIN`
* `LEFT JOIN`
* `RIGHT JOIN`
* `FULL OUTER JOIN`
* `CROSS JOIN`
* `SELF JOIN`
* `COUNT()`
* `SUM()`
* `GROUP BY`
* `IS NULL`
* Multi-table joins
* Aggregate calculations
* - Subqueries
- Scalar subqueries
- `IN` and `NOT IN`
- `EXISTS` and `NOT EXISTS`
- Correlated subqueries
- `ANY` / `SOME`
- `ALL`
- Subqueries in the `FROM` clause

## Repository Structure

```text
ecommerce-database/
│
├── README.md
├── schema.sql
├── sample_data.sql
│
└── queries/
    ├── 01_inner_join.sql
    ├── 02_left_join.sql
    ├── 03_right_join.sql
    ├── 04_full_outer_join.sql
    ├── 05_cross_join.sql
    └── 06_self_join.sql

## Technology

* PostgreSQL
* SQL
* GitHub


## Purpose
This is a hands-on learning and portfolio project focused on developing practical SQL and relational database skills.
