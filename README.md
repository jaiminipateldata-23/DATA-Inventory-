# Data Inventory Management

A SQL-based inventory analysis project designed to monitor stock levels, calculate inventory value, identify low-stock products, and support inventory management decisions through data-driven insights.

## Project Overview

This project uses SQL to analyze inventory data, monitor stock levels, calculate inventory value, and identify products requiring restocking.

## Business Problem

Organizations need accurate inventory tracking to reduce stock shortages, optimize inventory investments, and improve operational efficiency.

This project answers the following business questions:

- Which products are low in stock?
- What is the total inventory value?
- Which products contribute the most value?
- How is inventory distributed across categories?

## Project Files

```text {preview="false"}
Data-Inventory-Management/
│
├── README.md
├── LICENSE
├── mysql_setup.sql
├── inventory_analysis.sql
└── inventory_data.csv
```

## Setup Instructions

### Step 1: Open MySQL Workbench

Launch MySQL Workbench and connect to your local MySQL instance.

### Step 2: Run Setup Script

Open and execute:

```sql {preview="false"}
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

```sql {preview="false"}
inventory_analysis.sql
```

The script performs:

- Inventory KPI Analysis
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
| unit_price | Price Per Unit |

## Key KPIs

- Total Products
- Total Units in Stock
- Total Inventory Value
- Average Product Price
- Low Stock Products
- High-Value Products

## SQL Skills Demonstrated

- SELECT Statements
- WHERE Clauses
- Aggregate Functions (SUM, COUNT, AVG, MIN, MAX)
- GROUP BY
- ORDER BY
- Data Validation
- Inventory Analytics
- KPI Reporting

## Business Insights

- Identifies products that require immediate restocking.
- Highlights products contributing the highest inventory value.
- Provides visibility into inventory distribution across categories.
- Supports inventory planning and operational decision-making.
- Improves data quality through validation and integrity checks.

## Tools Used

- MySQL
- SQL
- GitHub

## License

This project is licensed under the MIT License.

The MIT License is a permissive open-source license that allows others to use, copy, modify, and distribute this project while retaining the original copyright and license notice.

For more information, see the LICENSE file included in this repository.

## Author

**Jaimini Patel**

Data Analyst | SQL | Power BI | Python

**LinkedIn:**  
https://www.linkedin.com/in/jaimini-patel-data-analyst

**GitHub:**  
https://github.com/jaiminipateldata-23

---

Thank you for reviewing this project. This repository demonstrates practical SQL skills in inventory analysis, KPI reporting, data validation, and business decision support.
