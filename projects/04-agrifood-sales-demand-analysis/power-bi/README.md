# Power BI Dashboard — AgriFood Sales & Demand Analysis

The Power BI report contains the interactive **AgriFood Sales & Demand Analysis** dashboard.

## Dashboard purpose

The report is designed to answer:

- Where does revenue and profit come from? (products, categories)
- Which regions perform best?
- How do sales channels compare?
- What are the monthly sales and profitability trends?
- Do promotional transactions show different margins?

## Filters

- Product
- Category
- Region
- Sales channel
- Month / date range
- Promotion status

## Documentation

- [`dashboard.md`](dashboard.md) — visual inventory and dashboard notes
- [`dax-measures.md`](dax-measures.md) — documented KPI measures

## Source data

The report connects to the same synthetic dataset as the SQL layer: [`data/sales_data.csv`](data/sales_data.csv).

## Reproducibility

The SQL scripts in [`sql/`](sql/) reproduce the main analytical cuts independently of the dashboard. Use them to verify the numbers shown in the report.
