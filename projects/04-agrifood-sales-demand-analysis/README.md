# Project 4 — AgriFood Sales & Demand Analysis

An end-to-end sales analytics project using a synthetic agrifood dataset. The project combines **Excel, SQL (SQLite), and Power BI** to evaluate revenue, profitability, product and category performance, regional demand, sales channels, monthly trends, and promotions.

## Business objectives

- Measure revenue, cost, profit, margin, orders, and units sold.
- Identify the strongest products and categories.
- Compare regional revenue, profit, and margins.
- Evaluate sales-channel performance.
- Analyze monthly sales and profitability trends.
- Compare promoted and non-promoted transactions.
- Turn the findings into practical business recommendations.

## Tools

- **Microsoft Excel** — source data and validation
- **SQLite / SQL** — reproducible business analysis
- **Power BI** — interactive dashboard and KPI reporting
- **DAX** — Power BI calculations and measures

## Project structure

```text
04-agrifood-sales-demand-analysis/
├── README.md
├── analysis/              # Supporting analysis/report material
├── assets/                # Dashboard screenshots and portfolio visuals
├── data/                  # Source Excel/CSV data
├── power-bi/              # Power BI .pbix file
└── sql/
    ├── 01_overall_performance.sql
    ├── 02_data_quality.sql
    ├── 03_category_analysis.sql
    ├── 04_product_analysis.sql
    ├── 05_regional_analysis.sql
    ├── 06_sales_channel_analysis.sql
    ├── 07_monthly_trends.sql
    └── 08_promotion_analysis.sql
```

## Data quality

The raw source contains one completely blank record. It is **not modified or deleted** from the source dataset; analytical SQL excludes rows without an `Order_ID`. The `02_data_quality.sql` script documents the checks and the exclusion rule.

## Baseline KPIs

| KPI | Value |
|---|---:|
| Orders | 1,001 |
| Units sold | 105,204 |
| Revenue | 2,816,965.08 MAD |
| Cost | 1,922,505.27 MAD |
| Profit | 894,447.95 MAD |
| Profit margin | 31.75% |

## Key business insights

- **Olive Oil 1L** is the top revenue-generating product at **843,481.43 MAD**.
- **Oils** is the largest category by revenue, but its **27.54%** margin is the lowest among the main categories.
- **Canned Goods** has the highest category margin at **41.61%**.
- **Casablanca** leads regional revenue and profit with **908,991.99 MAD** revenue and **288,538.08 MAD** profit.
- **Fes** has the strongest regional margin at **32.62%**.
- **Supermarket** is the strongest sales channel, generating **951,074.37 MAD** revenue and **304,255.02 MAD** profit.
- **May** is the strongest month with **328,424.62 MAD** revenue and **102,600.24 MAD** profit.
- **September** is the weakest month with **166,427.16 MAD** revenue and **52,296.03 MAD** profit.
- Promotional transactions show a lower observed margin (**27.78%**) than non-promotional transactions (**33.02%**). This is an association, not proof that promotions caused the lower margin.

## SQL analysis

The SQL layer is designed for SQLite and is split into eight reproducible analyses: overall performance, data quality, category performance, product ranking, regional performance, sales channels, monthly trends, and promotion comparison.

## Power BI

The Power BI report is intended to present the same analytical story through interactive KPI cards, category/product comparisons, regional and channel breakdowns, monthly trends, and promotion analysis. The `.pbix` belongs in `power-bi/` when uploaded.

## Portfolio value

This project demonstrates an end-to-end workflow: **data validation → SQL analysis → KPI design → Power BI visualization → business interpretation**.

All data is synthetic and created for learning and portfolio demonstration purposes; it does not represent confidential or real company data.
