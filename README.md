# Data Inventory Management

## Project Overview

This project uses SQL to analyze inventory data, monitor stock levels, calculate inventory value, and identify products requiring restocking.

## Business Problem

Organizations need accurate inventory tracking to reduce stock shortages and improve operational efficiency. This project answers the following questions:

- Which products are low in stock?
- What is the total inventory value?
- Which products contribute the most value?
- How is inventory distributed across categories?

## Project Files

```text
Data-Inventory-Management/
│
├── README.md
├── mysql_setup.sql
├── inventory_analysis.sql
└── inventory_data.csv
```

## Setup Instructions

### Step 1: Open MySQL Workbench

Launch MySQL Workbench and connect to your local MySQL instance.

### Step 2: Run Setup Script

Open and execute:

```sql
mysql_setup.sql
```

This script will:

- Create the database
- Create the inventory table
- Load sample inventory data
- Verify records
- Generate basic KPIs

### Step 3: Run Analysis Queries

Open and execute:

```sql
inventory_analysis.sql
```

The script performs:

- Inventory KPIs
- Inventory Value Analysis
- Low Stock Detection
- Category Analysis
- Data Validation Checks

## Dataset Fields

| Column | Description |
|----------|------------|
| product_id | Unique Product Identifier |
| product_name | Product Name |
| category | Product Category |
| stock_quantity | Current Stock Level |
| unit_price | Price per Unit |

## Key KPIs

- Total Products
- Total Units in Stock
- Total Inventory Value
- Average Product Price
- Low Stock Products
- High-Value Products

## SQL Skills Demonstrated

- SELECT Statements
- Aggregate Functions
- GROUP BY
- ORDER BY
- WHERE Clauses
- Data Validation
- Business KPI Reporting
- Inventory Analytics

## Business Insights

- Identifies products requiring immediate restocking.
- Highlights high-value inventory assets.
- Analyzes stock distribution across product categories.
- Supports inventory management decisions through data-driven reporting.

## Tools Used

- MySQL
- SQL
- GitHub

## Author

**Jaimini Patel**

Data Analyst | SQL | Power BI | Python

LinkedIn:
https://www.linkedin.com/in/jaimini-patel-data-analyst

GitHub:
https://github.com/jaiminipateldata-23
