# enterprise-order-fulfillment-reporting

## Project Overview
This project simulates an enterprise-level order fulfillment and revenue reporting system using SQL and Power BI. It follows a staging-to-core-to-reporting workflow to process raw transactional data and generate business insights.

## Tech Stack
- MySQL
- SQL
- Power BI
- Excel (CSV)

## Database Architecture
The project follows a 3-layer architecture:

Raw CSV Files → Staging Tables → Core Business Tables → Reporting Views → Power BI Dashboard

### Core Tables
- Customer
- Product
- Orders
- Order_Item
- Payment

### Staging Tables
- stg_customers
- stg_orders
- stg_order_items
- stg_payments

## Data Cleaning & Validation
Performed:
- Null handling using COALESCE and NULLIF
- Invalid foreign key detection
- Orphan payment detection
- Missing order date filtering
- Duplicate removal

## SQL Concepts Used
- INNER JOIN
- LEFT JOIN
- Subqueries
- CASE Statements
- GROUP BY
- Aggregate Functions (SUM, COUNT, AVG)
- Views

## Business Reports Created
- Monthly Revenue Trend
- Top Products by Revenue
- Customer Order Frequency
- Order Fulfillment Status
- Delayed Orders Analysis

## Power BI Dashboard
Includes:
- Revenue Trend Analysis
- Product Performance
- Customer Insights
- Order Fulfillment Status
- Business KPI Monitoring

## Key Learning
- Data modeling
- ETL workflow
- Data cleaning
- Debugging and root cause analysis
- Business reporting
