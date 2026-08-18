# Project 4 — AgriFood Sales Analysis

A complete sales analytics project combining **SQL (SQLite)** and **Power BI** to evaluate revenue, profitability, products, regions, sales channels, monthly trends, and promotions.

## Tools
- SQL / SQLite
- Power BI
- CSV data

## Project structure
```text
Project_4_AgriFood_Sales_Analysis/
├── AgriFood_Sales_Analysis.pbix
├── sales_data.csv
├── README.md
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

## Baseline KPIs
| KPI | Value |
|---|---:|
| Orders | 1,001 |
| Units sold | 105,204 |
| Revenue | 2,816,965.08 MAD |
| Cost | 1,922,505.27 MAD |
| Profit | 894,447.95 MAD |
| Profit margin | 31.75% |

One completely blank record was identified in the source data and excluded from analytical calculations without modifying the raw dataset.

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

## SQL work
The SQL folder contains reproducible queries for overall performance, data quality, category performance, product rankings, regional performance, sales channels, monthly trends, and promotion analysis.

## Power BI
The `.pbix` file contains the two-page interactive dashboard created from the same sales dataset.
