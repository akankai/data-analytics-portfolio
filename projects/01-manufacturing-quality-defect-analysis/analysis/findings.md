# Analytical Findings — Manufacturing Quality & Defect Analysis

## Dataset quality

The synthetic source dataset contains **460 production records and 12 fields**.

- Missing values: **0**
- Duplicate rows: **0**
- Total production: **532,362 units**
- Total defects: **8,689 units**
- Good units: **523,673 units**
- Overall defect rate: **1.63%**

## Machine performance

| Machine | Defect Rate |
|---|---:|
| M03 | **1.84%** |
| M01 | 1.59% |
| M02 | 1.52% |

M03 has the highest overall defect rate and records the highest rate for **4 of the 5 products**. This makes M03 the strongest priority for operational investigation within this dataset.

The machine/product comparison is important because aggregate machine differences can be influenced by product assignment. The analysis therefore does **not** claim that M03 is the root cause.

## Product performance

Noir Extrême has the highest product-level defect rate in the dashboard, while Noir Light has the lowest. Product comparisons should be interpreted alongside machine assignment and operating conditions.

## Quality parameters

- **Fat percentage:** no obvious positive relationship with defect rate is visible in the exploratory scatter plot.
- **Viscosity:** no obvious linear relationship with defect rate is visible.
- **Fineness:** no obvious linear relationship with defect rate is visible.
- **Humidity:** the visual suggests a possible relationship in parts of the dataset, but the pattern is not sufficient to establish a root cause.

## Business interpretation

The strongest actionable signal from the current analysis is the consistently higher defect rate associated with **M03**. The available variables are sufficient to prioritize an investigation, but not to identify a definitive root cause.

## Recommendations

1. Review M03 calibration, maintenance condition and operating settings.
2. Compare M03 with M01 and M02 under the same product conditions.
3. Review M03 performance separately for each product.
4. Investigate production-time and operator effects.
5. If this were operational data, combine quality results with maintenance events, downtime, temperature, process settings and shift information.

## Scope and limitations

This project uses synthetic data created for portfolio and learning purposes. The findings demonstrate an analytics workflow and should not be interpreted as findings about a real manufacturing facility.
