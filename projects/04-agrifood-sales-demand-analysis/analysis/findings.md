# Analytical Findings — AgriFood Sales & Demand Analysis

## Dataset quality

The synthetic source dataset (`data/sales_data.csv`) contains **1,001 data rows** (1,000 valid orders after excluding one blank record) and 12 fields.

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

- Promotional transactions show a lower observed margin (**27.78%**) than non-promotional transactions (**33.02%**).
- This is an association in the observed data, not proof that promotions caused the lower margin.
- **Promotion-by-category analysis** (see `sql/09_promotion_by_category.sql`) shows that the margin gap is consistent across all five categories: in every category, promoted transactions have a lower margin than non-promoted transactions. This means the overall gap is not driven by promotion concentration in low-margin categories.
  - Oils: 28.97% non-promo vs. 23.27% promo (−5.70 pp)
  - Dairy: 32.08% non-promo vs. 26.73% promo (−5.35 pp)
  - Grains: 37.19% non-promo vs. 32.93% promo (−4.26 pp)
  - Beverages: 39.49% non-promo vs. 35.32% promo (−4.17 pp)
  - Canned Goods: 42.69% non-promo vs. 37.93% promo (−4.76 pp)
- The consistency across categories suggests the margin reduction is a genuine effect of the promotional pricing, but the dataset does not contain discount depth, advertising spend, or incremental volume data to determine whether the lost margin is offset by higher volume or customer acquisition.
- Promotion analysis is in `sql/08_promotion_analysis.sql` and the category-controlled version in `sql/09_promotion_by_category.sql`.

## Notes

The dataset is synthetic and does not contain external drivers such as customer-level behavior, competitor pricing, detailed discount depth, advertising spend, inventory availability, or macroeconomic variables. Findings are descriptive and should not be interpreted as causal conclusions.
