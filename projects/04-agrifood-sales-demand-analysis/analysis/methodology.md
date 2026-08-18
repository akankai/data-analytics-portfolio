# Analysis Methodology

## 1. Business framing

The analysis starts with an agrifood sales question: how can sales data be used to understand performance drivers and identify opportunities for revenue and profit growth?

## 2. Data validation

The source workbook was checked for:

- Missing values
- Duplicate rows
- Numeric-field consistency
- Sales and profit totals
- Plausible categorical values

The synthetic dataset contains no missing values or duplicate rows.

## 3. KPI construction

Core KPIs are:
- Total Revenue = SUM(Revenue_MAD)
- Total Cost = SUM(Cost_MAD)
- Total Profit = SUM(Profit_MAD)
- Profit Margin = DIVIDE([Total Profit], [Total Revenue], 0)

Supporting KPIs include Units Sold, Average Order Value, and Promotion Effectiveness.

## 4. SQL analysis

Seven focused SQL scripts were developed for layered analysis:
1. Overall performance (revenue, cost, profit, margin, volume)
2. Category-level sales and profitability
3. Product performance and ranking
4. Regional revenue, profit and demand
5. Sales-channel performance and mix
6. Monthly revenue, profit and units sold trends
7. Promotion vs non-promotion performance

Each script follows the pattern:
- SELECT relevant aggregations
- GROUP BY key dimensions
- ORDER BY metric of interest
- LIMIT for top/bottom performers where applicable

## 5. Power BI modeling

Power BI was used for:
- Data import and cleaning
- Relationship building between tables
- DAX measure creation for interactive calculations
- Report page design following analytical flow

## 6. Interpretation boundaries

Conclusions are limited to what the dataset supports. Observed relationships are presented as signals for business investigation rather than proven causal relationships.
