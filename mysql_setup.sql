/*
=================================================
DATA INVENTORY MANAGEMENT PROJECT
Author: Jaimini Patel
Database Setup Script
=================================================
*/

-- Create Database

CREATE DATABASE IF NOT EXISTS data_inventory;

USE data_inventory;

-- Drop Table if Exists

DROP TABLE IF EXISTS inventory;

-- Create Inventory Table

CREATE TABLE inventory (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    stock_quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

-- Insert Sample Data

INSERT INTO inventory
(product_id, product_name, category, stock_quantity, unit_price)
VALUES
(101,'Laptop','Electronics',25,1200.00),
(102,'Mouse','Electronics',150,25.00),
(103,'Keyboard','Electronics',80,60.00),
(104,'Monitor','Electronics',30,300.00),
(105,'Printer','Office',10,250.00),
(106,'Desk Chair','Furniture',15,180.00),
(107,'Desk','Furniture',8,350.00),
(108,'Notebook','Office',200,5.00),
(109,'Webcam','Electronics',40,75.00),
(110,'Headset','Electronics',60,90.00),
(111,'Filing Cabinet','Furniture',12,220.00),
(112,'Scanner','Office',18,280.00);

-- Verify Data

SELECT *
FROM inventory;

-- Quick KPI Dashboard

SELECT
    COUNT(*) AS total_products,
    SUM(stock_quantity) AS total_units,
    ROUND(SUM(stock_quantity * unit_price), 2) AS total_inventory_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM inventory;

-- Low Stock Alert

SELECT
    product_id,
    product_name,
    stock_quantity
FROM inventory
WHERE stock_quantity < 20
ORDER BY stock_quantity;
