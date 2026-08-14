# Project 01 — Manufacturing Quality & Defect Analysis

## Business Problem

A chocolate manufacturing company wants to understand production quality performance and investigate the factors associated with defective production.

> **Dataset note:** This project uses synthetic data created for portfolio and learning purposes. It does not represent confidential or real company production data.

## Objectives

- Measure production and quality performance.
- Track defect-rate evolution over time.
- Compare quality performance across products and machines.
- Investigate relationships between quality parameters and defects.
- Identify production areas that require further investigation.
- Communicate findings through an interactive Power BI dashboard.

## Dataset

The dataset contains **460 batch-level production records** covering five chocolate products.

| Field | Description |
|---|---|
| Date | Production date |
| Product | Chocolate product |
| Batch | Unique production batch |
| Production_Qty | Units produced |
| Defects | Defective units |
| Humidity_pct | Product humidity (%) |
| Fat_pct | Fat content (%) |
| Viscosity | Viscosity measurement |
| Fineness_um | Particle fineness (µm) |
| Production_Time_h | Production duration (hours) |
| Operator | Production operator |
| Machine | Production machine |

## KPIs

| KPI | Definition | Full-dataset result |
|---|---|---:|
| **Total Production** | Sum of all units produced | **532,362** |
| **Good Units** | Total Production − Total Defects | **523,673** |
| **Total Defects** | Sum of defective units | **8,689** |
| **Defect Rate** | Total Defects ÷ Total Production | **1.63%** |

### DAX Measures

```DAX
Total Production = SUM(Production_Data[Production_Qty])

Total Defects = SUM(Production_Data[Defects])

Good Units = [Total Production] - [Total Defects]

Defect Rate = DIVIDE([Total Defects], [Total Production], 0)
```

## Dashboard

The Power BI dashboard is organized into three analytical layers:

### 1. Overall performance

- Total Production
- Good Units
- Total Defects
- Defect Rate

### 2. Where are quality issues concentrated?

- Defect Rate by Month
- Defect Rate by Product
- Defect Rate by Machine

### 3. What factors may be associated with defects?

- Defect Rate vs Humidity
- Defect Rate vs Fat Percentage
- Defect Rate vs Viscosity
- Defect Rate vs Fineness

## Key Findings

### Machine performance

**M03 has the highest overall defect rate at approximately 1.84%**, compared with 1.59% for M01 and 1.52% for M02.

M03 also has the highest defect rate for **4 of the 5 products** in the current dataset. This makes M03 the primary machine requiring further investigation.

However, the analysis does **not** establish that M03 causes the defects. Machine performance can be influenced by product assignment and operating conditions.

### Product performance

Noir Extrême shows the highest product-level defect rate in the current dashboard, while Noir Light shows the lowest.

A high value in one product parameter should not automatically be interpreted as a cause. Product-level differences can create confounding relationships between quality measurements and defects.

### Quality parameters

- **Fat percentage:** no obvious positive relationship with defect rate.
- **Viscosity:** no obvious linear relationship with defect rate.
- **Fineness:** no obvious linear relationship with defect rate.
- **Humidity:** shows a possible relationship in parts of the dataset, but requires further statistical validation before drawing a causal conclusion.

## Analytical Approach

1. Define the business problem.
2. Inspect and validate the production dataset.
3. Build core DAX KPIs.
4. Explore quality performance over time.
5. Compare products and machines using normalized defect rates.
6. Investigate potential relationships between quality parameters and defects.
7. Drill down into machine/product combinations to avoid misleading aggregate conclusions.
8. Identify findings that require further investigation rather than overstating causality.

## Recommendations

1. **Prioritize M03 for a quality investigation** because it consistently shows higher defect rates.
2. Compare M03 against M01/M02 for calibration, maintenance condition, operating settings, and production-time patterns.
3. Investigate M03 performance **within each product**, rather than relying only on overall machine averages.
4. Validate the apparent humidity relationship with correlation analysis and appropriate statistical testing.
5. Collect additional operational variables such as temperature, machine settings, downtime, maintenance events, and shift information.

## Limitations

- The dataset is synthetic and intended for portfolio/learning purposes.
- The current analysis identifies associations, not causal relationships.
- The dataset contains a limited number of operational variables.
- Some variables are strongly linked to product type, which can create confounding effects.
- Statistical significance has not yet been formally tested.

## Next Steps

- Perform correlation analysis in Python.
- Test machine differences statistically.
- Investigate operator and production-time effects.
- Analyze machine/product interactions.
- Add statistical validation to the final conclusions.
- Refine the Power BI dashboard after the validated analysis.

## Documentation

- [Analytical findings](analysis/findings.md)
- [Analysis methodology](analysis/methodology.md)
- [Power BI dashboard documentation](power-bi/dashboard.md)
- [DAX measures](power-bi/dax-measures.md)
- [Data dictionary](data/data-dictionary.md)
- [Dataset documentation](data/README.md)

The original synthetic Excel workbook, Power BI `.pbix` report, and dashboard screenshot were supplied as conversation attachments during development. The repository currently contains the complete written case study and analysis documentation; the binary artifacts can be added to the corresponding `data/`, `power-bi/`, and `assets/` folders when committing local files.

## Tools

- Microsoft Excel
- Microsoft Power BI
- DAX
