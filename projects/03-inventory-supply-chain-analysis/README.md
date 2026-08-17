# Project 03 — Inventory & Supply Chain Analysis

## Overview

This project analyzes inventory levels, stockout risk, supplier reliability and inventory movement using a synthetic retail inventory dataset for 2025.

The goal is to turn operational inventory records into a Power BI dashboard that helps answer:

- How much inventory value is currently held?
- Which products are most exposed to stockouts or low-stock conditions?
- Which suppliers have the weakest on-time delivery performance?
- How is inventory distributed across warehouses and categories?
- How quickly is inventory moving?

This project demonstrates an end-to-end **Excel → Power BI → DAX → business insights** workflow.

> **Dataset note:** The dataset is synthetic and was created for portfolio/learning purposes. It does not represent confidential or real company data.

## Business objectives

- Monitor total inventory value.
- Measure stockout and low-stock exposure.
- Evaluate supplier on-time delivery.
- Compare inventory turnover across products.
- Identify warehouses and categories with high inventory concentration.
- Translate dashboard observations into operational recommendations.

## Dataset

The dataset contains **600 inventory records** covering **January–December 2025**.

It includes:

- 10 products
- 4 categories
- 5 suppliers
- 3 warehouses
- Opening and closing stock
- Units received and sold
- Reorder points
- Stockout days
- Lead time
- Unit cost
- Orders placed
- Late-delivery indicator

See [data dictionary](data/data-dictionary.md) for field definitions.

## KPI definitions

| KPI | Definition |
|---|---|
| Inventory Value | Sum of closing stock units × unit cost |
| Stockout Rate | Share of records with at least one stockout day |
| Low Stock Rate | Share of records where closing stock is below the reorder point |
| On-Time Delivery Rate | Share of records without a late-delivery flag |
| Inventory Turnover | Cost-weighted units sold divided by cost-weighted average inventory based on opening and closing stock |

## Dashboard

![Inventory & Supply Chain Dashboard](assets/inventory-supply-chain-dashboard.png)

The dashboard includes:

- Inventory Value by Category
- Stockout Rate by Product
- On-Time Delivery Rate by Supplier
- Inventory Turnover by Product
- Inventory Value by Warehouse
- Low Stock Rate by Product

Interactive filters are provided for **Category, Supplier and Warehouse**.

## Key findings

1. **Inventory value is approximately 1.502M MAD.** Casablanca holds the largest share of inventory value at approximately 697.6K MAD.
2. **Low-stock exposure is high at 82.83%** of records (497 of 600), indicating that replenishment thresholds should be reviewed.
3. **Stockout rate is 4.83%** (29 of 600 records). Canned Peas 400g has the highest product-level stockout rate at 13.33%, followed by Flour 1kg at 10.00%.
4. **On-time delivery is 87.00% overall.** Sahara Trading is the weakest supplier at 76.52%, compared with 92.00% for Rif Distribution.
5. **Inventory turnover is 0.59×** on the dataset's observed period and definition, indicating that inventory moved relatively slowly compared with the average inventory base used in the calculation.
6. **Dry Goods carry the largest inventory value** at approximately 669.2K MAD, while Dairy has the highest category-level low-stock rate at 90.0%.

See [analytical findings](analysis/findings.md) for the detailed breakdown and [methodology](analysis/methodology.md) for calculation notes.

## Recommendations

- Review reorder points and replenishment settings, especially for products with persistent low-stock exposure.
- Prioritize Canned Peas 400g and Flour 1kg for stockout-risk investigation.
- Review service levels and lead-time performance with Sahara Trading.
- Monitor inventory concentration in Casablanca and Dry Goods before reallocating or increasing stock.
- In a real deployment, enrich the model with demand forecasts, purchase-order dates, lead-time variability, promotions and supplier-level root-cause data.

## Tools

- **Microsoft Excel** — data source and validation
- **Microsoft Power BI** — data modeling and dashboarding
- **DAX** — KPI calculations and interactive measures

## Project documentation

- [Analytical findings](analysis/findings.md)
- [Methodology](analysis/methodology.md)
- [Data dictionary](data/data-dictionary.md)
- [Data notes](data/README.md)
- [Power BI dashboard documentation](power-bi/dashboard.md)
- [DAX measures](power-bi/dax-measures.md)
- [Power BI project notes](power-bi/README.md)
