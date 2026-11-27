/*
====================================
DATA INVENTORY MANAGEMENT PROJECT
Author: Jaimini Patel
====================================
*/

-- View Inventory Data

SELECT *
FROM inventory;

--------------------------------------------------
-- KPI 1: Total Products
--------------------------------------------------

SELECT COUNT(*) AS total_products
FROM inventory;

--------------------------------------------------
-- KPI 2: Total Units in Stock
--------------------------------------------------

SELECT SUM(stock_quantity) AS total_units
FROM inventory;

--------------------------------------------------
-- KPI 3: Total Inventory Value
--------------------------------------------------

SELECT
    ROUND(SUM(stock_quantity * unit_price),2) AS total_inventory_value
FROM inventory;

--------------------------------------------------
-- KPI 4: Average Product Price
--------------------------------------------------

SELECT
    ROUND(AVG(unit_price),2) AS average_price
FROM inventory;

--------------------------------------------------
-- Inventory by Category
--------------------------------------------------

SELECT
    category,
    COUNT(*) AS total_products,
    SUM(stock_quantity) AS stock_units,
    ROUND(SUM(stock_quantity * unit_price),2) AS inventory_value
FROM inventory
GROUP BY category;

--------------------------------------------------
-- Top 5 Highest Value Products
--------------------------------------------------

SELECT
    product_name,
    stock_quantity,
    unit_price,
    stock_quantity * unit_price AS inventory_value
FROM inventory
ORDER BY inventory_value DESC
LIMIT 5;

--------------------------------------------------
-- Low Stock Alert
--------------------------------------------------

SELECT *
FROM inventory
WHERE stock_quantity < 20;

--------------------------------------------------
-- Very Low Stock Products
--------------------------------------------------

SELECT *
FROM inventory
WHERE stock_quantity < 10;

--------------------------------------------------
-- Highest Stock Products
--------------------------------------------------

SELECT
    product_name,
    stock_quantity
FROM inventory
ORDER BY stock_quantity DESC;

--------------------------------------------------
-- Data Validation: Duplicate Products
--------------------------------------------------

SELECT
    product_id,
    COUNT(*) AS duplicate_count
FROM inventory
GROUP BY product_id
HAVING COUNT(*) > 1;

--------------------------------------------------
-- Data Validation: Missing Product Names
--------------------------------------------------

SELECT *
FROM inventory
WHERE product_name IS NULL;

--------------------------------------------------
-- Data Validation: Missing Category
--------------------------------------------------

SELECT *
FROM inventory
WHERE category IS NULL;

--------------------------------------------------
-- Data Validation: Negative Stock
--------------------------------------------------

SELECT *
FROM inventory
WHERE stock_quantity < 0;

--------------------------------------------------
-- Data Validation: Negative Prices
--------------------------------------------------

SELECT *
FROM inventory
WHERE unit_price < 0;

--------------------------------------------------
-- Inventory KPI Dashboard
--------------------------------------------------

SELECT
    COUNT(*) AS total_products,
    SUM(stock_quantity) AS total_units,
    ROUND(SUM(stock_quantity * unit_price),2) AS inventory_value,
    ROUND(AVG(unit_price),2) AS average_price
FROM inventory;
