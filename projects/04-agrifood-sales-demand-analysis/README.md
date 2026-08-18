# Project 04 — AgriFood Sales & Demand Analysis

## Overview

An end-to-end sales analytics project using a synthetic agri-food dataset. The project combines **Excel, SQL (SQLite), Power BI, and DAX** to evaluate revenue, profitability, product and category performance, regional demand, sales channels, monthly trends, and promotions.

## Business problem

A food business needs to understand where revenue and profit come from, which products and regions perform best, how sales channels compare, and whether promotional transactions are associated with different margins. The analysis turns transaction-level sales data into decision-ready KPIs and recommendations.

## Objectives

- Measure revenue, cost, profit, margin, orders, and units sold.
- Identify the strongest products and categories.
- Compare regional revenue, profit, and margins.
- Evaluate sales-channel performance.
- Analyze monthly sales and profitability trends.
- Compare promoted and non-promoted transactions.
- Document data-quality issues and the analytical treatment applied.
- Communicate findings through reproducible SQL and Power BI reporting.

## Dataset

The project uses a synthetic transaction-level CSV dataset stored in [`data/sales_data.csv`](data/sales_data.csv).

Key fields include:

| Field | Description |
|---|---|
| `Date` | Transaction date |
| `Order_ID` | Order identifier |
| `Product` | Product name |
| `Category` | Product category |
| `Region` | Sales region |
| `Sales_Channel` | Sales channel |
| `Units_Sold` | Units sold |
| `Unit_Price_MAD` | Unit selling price in MAD |
| `Unit_Cost_MAD` | Unit cost in MAD |
| `Promotion` | Promotion indicator |
| `Revenue_MAD` | Transaction revenue |
| `Cost_MAD` | Transaction cost |
| `Profit_MAD` | Transaction profit |

> **Dataset note:** The data is synthetic and was created for portfolio/learning purposes. It does not represent confidential or real company data.

## Data quality

The source contains **one completely blank record**. The source file is preserved unchanged; analytical SQL excludes rows where `Order_ID` is blank. The checks and exclusion rule are documented in [`sql/02_data_quality.sql`](sql/02_data_quality.sql).

This keeps the source reproducible while preventing the blank record from affecting business KPIs.

## Methodology

**Data validation → SQL analysis → KPI calculation → Power BI visualization → business interpretation**

The SQL layer reproduces the main analytical cuts independently of the dashboard, while Power BI provides interactive reporting and DAX-based measures.

## Baseline KPIs

| KPI | Value |
|---|---:|
| Orders | **1,001** |
| Units sold | **105,204** |
| Revenue | **2,816,965.08 MAD** |
| Cost | **1,922,505.27 MAD** |
| Profit | **894,447.95 MAD** |
| Profit margin | **31.75%** |

## Key findings

- **Olive Oil 1L** is the top revenue-generating product at **843,481.43 MAD**.
- **Oils** is the largest category by revenue, but its **27.54%** margin is the lowest among the main categories.
- **Canned Goods** has the highest category margin at **41.61%**.
- **Casablanca** leads regional revenue and profit with **908,991.99 MAD** revenue and **288,538.08 MAD** profit.
- **Fes** has the strongest regional margin at **32.62%**.
- **Supermarket** is the strongest sales channel, generating **951,074.37 MAD** revenue and **304,255.02 MAD** profit.
- **May** is the strongest month with **328,424.62 MAD** revenue and **102,600.24 MAD** profit.
- **September** is the weakest month with **166,427.16 MAD** revenue and **52,296.03 MAD** profit.
- Promotional transactions show a lower observed margin (**27.78%**) than non-promotional transactions (**33.02%**). This is an association in the observed data, not proof that promotions caused the lower margin.

## Business recommendations

1. Protect availability and commercial focus on high-revenue products such as Olive Oil 1L while monitoring their margins.
2. Review pricing, cost structure, or product mix for the Oils category because its revenue leadership is accompanied by the lowest main-category margin.
3. Investigate the drivers behind Canned Goods' stronger margin and assess whether the practices can be applied elsewhere.
4. Use regional and channel performance to prioritize commercial attention while investigating the weaker periods highlighted by the monthly analysis.
5. Evaluate promotional mechanics and discount depth before increasing promotion intensity; compare promotion performance by product and channel rather than relying only on the overall margin comparison.

## SQL analysis

The SQL layer is written for **SQLite** and is organized into eight reproducible analyses:

```text
sql/
├── 01_overall_performance.sql
├── 02_data_quality.sql
├── 03_category_analysis.sql
├── 04_product_analysis.sql
├── 05_regional_analysis.sql
├── 06_sales_channel_analysis.sql
├── 07_monthly_trends.sql
└── 08_promotion_analysis.sql
```

The scripts demonstrate aggregation, grouping, calculated margins, ranking-oriented outputs, date-based trend analysis, promotion comparison, NULL/blank handling, and division-by-zero protection with `NULLIF`.

## Power BI

[`power-bi/AgriFood_Sales_Analysis.pbix`](power-bi/AgriFood_Sales_Analysis.pbix) contains the interactive report. Supporting documentation is available in [`power-bi/dashboard.md`](power-bi/dashboard.md) and [`power-bi/dax-measures.md`](power-bi/dax-measures.md).

## Project structure

```text
04-agrifood-sales-demand-analysis/
├── README.md
├── analysis/
│   ├── findings.md
│   └── methodology.md
├── data/
│   └── sales_data.csv
├── power-bi/
│   ├── AgriFood_Sales_Analysis.pbix
│   ├── dashboard.md
│   └── dax-measures.md
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

## Tools & skills demonstrated

- **Microsoft Excel** — source data preparation and validation
- **SQLite / SQL** — reproducible business analysis and data-quality checks
- **Power BI** — data modeling and interactive dashboarding
- **DAX** — KPI calculations and report measures
- **Business analysis** — interpreting performance differences and translating them into recommendations

## Limitations

The dataset is synthetic and does not contain external drivers such as customer-level behavior, competitor pricing, detailed discount depth, advertising spend, inventory availability, or macroeconomic variables. Therefore, the findings are descriptive and should not be interpreted as causal conclusions.
