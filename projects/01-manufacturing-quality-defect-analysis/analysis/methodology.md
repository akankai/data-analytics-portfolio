# Analysis Methodology

## 1. Business framing

The analysis starts from a manufacturing quality question: how can production data be used to understand defects and identify where quality-control efforts should focus?

## 2. Data validation

The source workbook was checked for:

- Missing values
- Duplicate rows
- Numeric field consistency
- Production and defect totals
- Plausible categorical values

The current synthetic dataset contains no missing values or duplicate rows.

## 3. KPI construction

The core KPI is the **Defect Rate**:

`Defect Rate = Total Defects / Total Production`

Supporting KPIs are Total Production, Total Defects and Good Units.

## 4. Exploratory analysis

Power BI visuals were used to examine:

- Monthly defect-rate trends
- Product-level defect rates
- Machine-level defect rates
- Machine/product combinations
- Defect rate against humidity
- Defect rate against fat percentage
- Defect rate against viscosity
- Defect rate against fineness

## 5. Hypothesis-driven analysis

Rather than assuming that a high measurement causes defects, the analysis tests visual evidence and compares groups before drawing conclusions.

For example, M03 was identified as a machine requiring investigation, but the analysis deliberately avoids claiming that M03 causes defects without statistical validation.

## 6. Future statistical validation

The next phase will use Python to calculate correlations and perform appropriate statistical tests. Where multiple explanatory variables are involved, multivariate analysis can be used to reduce confounding effects.
