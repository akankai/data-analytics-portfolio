# Analysis Methodology

## 1. KPI definition

The primary KPI is the defect rate because raw defect counts are strongly influenced by production volume.

## 2. Exploratory analysis

The analysis first examines:

- Monthly defect-rate trend.
- Product-level defect rates.
- Machine-level defect rates.
- Quality-parameter scatter plots.

## 3. Hypothesis testing through segmentation

A high machine-level defect rate alone is not enough to identify a machine as a likely problem because machine usage may differ by product.

The machine/product matrix therefore compares defect rates within products.

### Key result

M03 has the highest overall defect rate in the dashboard and remains highest for most product categories. This makes M03 the primary area for further investigation.

## 4. Interpretation

The analysis deliberately avoids causal claims. A visible association is treated as a hypothesis that requires additional operational data or statistical testing.

## 5. Next analytical steps

For a stronger version of the project, the next iteration should add:

- Correlation coefficients.
- Statistical significance testing.
- Control charts for defect rate.
- Outlier detection.
- Shift/operator analysis.
- Maintenance-event analysis.
- A machine × product interaction analysis.
- A multivariate model to estimate which factors are most associated with defects.
