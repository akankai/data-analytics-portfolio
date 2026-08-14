# Analytical Findings — Manufacturing Quality & Defect Analysis

## Dataset validation

The synthetic source workbook contains **460 rows and 12 columns**.

- Missing values: **0**
- Duplicate rows: **0**
- Total production: **532,362 units**
- Total defects: **8,689 units**
- Good units: **523,673 units**
- Overall defect rate: **1.63%**

## Machine analysis

| Machine | Defect Rate |
|---|---:|
| M03 | **1.84%** |
| M01 | 1.59% |
| M02 | 1.52% |

M03 has the highest overall defect rate and the highest rate for 4 of the 5 products. It is therefore the primary machine requiring investigation.

This is an association, not proof of causation.

## Product analysis

Noir Extrême has the highest product-level defect rate in the current dashboard, while Noir Light has the lowest.

Product-level comparisons must be interpreted alongside machine assignment and operating conditions.

## Quality-parameter exploration

### Humidity

The scatter plot suggests a possible relationship between humidity and defect rate in parts of the dataset. This should be validated statistically before being used as a root-cause claim.

### Fat percentage

No obvious positive trend between fat percentage and defect rate was observed.

### Viscosity

No obvious linear trend between viscosity and defect rate was observed.

### Fineness

No obvious linear trend between fineness and defect rate was observed.

## Analytical interpretation

The most defensible conclusion from the current analysis is:

> **M03 is the main area requiring further investigation because it consistently exhibits higher defect rates, while the available quality parameters do not yet provide enough evidence to establish a root cause.**

## Recommended next analysis

1. Calculate correlations between numerical variables and defect rate.
2. Compare M01, M02 and M03 within each product.
3. Test whether machine differences are statistically significant.
4. Investigate operator and production-time effects.
5. Add operational variables such as temperature, maintenance events, downtime and machine settings.
