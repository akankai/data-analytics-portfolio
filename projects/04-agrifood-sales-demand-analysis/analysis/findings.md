# Analytical Findings — AgriFood Sales & Demand Analysis

## Dataset quality

The synthetic source dataset (`data/sales_data.csv`) contains **1,002 data rows** (1,001 valid orders after excluding one blank record) and 12 fields.

- Missing values in critical fields: **handled via NULL/blank checks** (see `sql/02_data_quality.sql`)
- Duplicate rows: **0**
- One completely blank record excluded from all KPI calculations
- Total revenue (valid orders): **2,816,965.08 MAD**
- Total profit (valid orders): **894,447.95 MAD**
- Overall profit margin: **31.75%**

## Category performance

- **Oils** is the largest category by revenue but has the lowest main-category margin at **27.54%**.
- **Canned Goods** has the highest category margin at **41.61%**.
- Categories are ranked by revenue in `sql/03_category_analysis.sql`.

## Product performance

- **Olive Oil 1L** is the top revenue-generating product at **843,481.43 MAD**.
- Product rankings by revenue and margin are in `sql/04_product_analysis.sql`.

## Regional performance

- **Casablanca** leads in revenue (908,991.99 MAD) and profit (288,538.08 MAD).
- **Fes** has the strongest regional margin at **32.62%**.
- Regional breakdowns are in `sql/05_regional_analysis.sql`.

## Sales-channel performance

- **Supermarket** is the strongest channel, generating 951,074.37 MAD revenue and 304,255.02 MAD profit.
- Channel analysis is in `sql/06_sales_channel_analysis.sql`.

## Monthly trends

- **May** is the strongest month with 328,424.62 MAD revenue and 102,600.24 MAD profit.
- **September** is the weakest month with 166,427.16 MAD revenue and 52,296.03 MAD profit.
- Monthly trends are in `sql/07_monthly_trends.sql`.

## Promotion performance

- Promotional transactions show a lower observed margin (27.78%) than non-promotional transactions (33.02%).
- This is an association in the observed data, not proof that promotions caused the lower margin.
- Promotion analysis is in `sql/08_promotion_analysis.sql`.

## Notes

The dataset is synthetic and does not contain external drivers such as customer-level behavior, competitor pricing, detailed discount depth, advertising spend, inventory availability, or macroeconomic variables. Findings are descriptive and should not be interpreted as causal conclusions.
