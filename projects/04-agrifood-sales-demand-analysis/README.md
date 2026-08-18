# Project 04 — AgriFood Sales & Demand Analysis

## Overview

This project analyzes synthetic agrifood sales data to understand revenue, profit, product performance, regional demand, sales-channel performance, monthly trends and promotion effects.

The project demonstrates an end-to-end **Excel → SQL → Power BI → business insights** workflow.

> **Dataset note:** The dataset is synthetic and was created for portfolio/learning purposes. It does not represent confidential or real company data.

## Business objectives

- Measure overall revenue, cost and profit performance.
- Compare sales and profitability across product categories and products.
- Identify the strongest and weakest regions.
- Evaluate Online, Retail, Supermarket and Wholesale channels.
- Track monthly sales and profit trends.
- Compare promoted and non-promoted orders.
- Identify products and segments with the strongest demand and margin contribution.

## Dataset

The source workbook contains a `Sales_Data` table with sales transactions and a data dictionary. Key fields include:

- Date and Order_ID
- Product and Category
- Region
- Sales_Channel
- Units_Sold
- Unit_Price_MAD and Unit_Cost_MAD
- Promotion
- Revenue_MAD, Cost_MAD and Profit_MAD

## SQL analysis

The SQL layer is organized into focused analysis scripts:

| Script | Purpose |
|---|---|
| `01_overall_performance.sql` | Overall revenue, cost, profit, margin and volume KPIs |
| `02_category_analysis.sql` | Category-level sales and profitability |
| `03_product_analysis.sql` | Product performance and ranking |
| `04_regional_analysis.sql` | Regional revenue, profit and demand |
| `05_sales_channel_analysis.sql` | Channel performance and mix |
| `06_monthly_trends.sql` | Monthly revenue, profit and units sold |
| `07_promotion_analysis.sql` | Promotion vs non-promotion performance |

The scripts are written for **SQLite**. Import the workbook's `Sales_Data` sheet into a table named `sales_data` before running them.

## Power BI

Power BI is used for interactive reporting and dashboard exploration. Recommended report areas include:

- Executive KPI overview
- Revenue and profit by category
- Product performance
- Regional performance
- Sales-channel mix
- Monthly trend analysis
- Promotion comparison

The Power BI project file is maintained separately because `.pbix` is a binary file.

## Key analytical questions

1. Which categories and products generate the most revenue and profit?
2. Which products have strong sales volume but weaker margins?
3. Which regions contribute the most to total performance?
4. Which sales channels are most important for revenue and profitability?
5. How does performance change throughout the year?
6. Do promoted orders show different revenue, volume or margin characteristics?

## Tools

- **Microsoft Excel** — source data and validation
- **SQLite / SQL** — querying, aggregation and business analysis
- **Microsoft Power BI** — data modeling and dashboarding
- **DAX** — interactive KPI calculations

## Portfolio skills demonstrated

Data cleaning and validation, SQL aggregation, GROUP BY analysis, conditional aggregation, ranking, time-series analysis, profitability analysis, business KPI design, Power BI modeling and dashboard communication.
