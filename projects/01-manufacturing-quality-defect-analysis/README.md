# Project 01 — Manufacturing Quality & Defect Analysis

## Business Problem

A chocolate manufacturing company wants to understand its production quality performance and investigate the factors associated with defective production.

## Objectives

- Measure production and quality performance.
- Track the defect rate over time.
- Compare quality performance across products and machines.
- Investigate relationships between quality parameters and defects.
- Identify production areas that require further investigation.
- Provide data-driven recommendations to management.

## Dataset

The project uses a batch-level synthetic manufacturing dataset containing **460 production records**.

Main fields:

- Date
- Product
- Batch
- Production quantity
- Defects
- Humidity
- Fat percentage
- Viscosity
- Fineness
- Production time
- Operator
- Machine

## KPI Definitions

The dashboard uses the following core KPIs:

| KPI | Definition | Full-dataset result |
|---|---|---:|
| **Total Production** | Sum of all units produced | **532,362** |
| **Good Units** | Total Production − Total Defects | **523,673** |
| **Total Defects** | Sum of defective units | **8,689** |
| **Defect Rate** | Total Defects ÷ Total Production | **1.63%** |

> These values are calculated from the complete 460-row source workbook. The earlier dashboard version displayed a smaller subset of the data, so its KPI cards were not representative of the full dataset.

### DAX Measures

```DAX
Total Production = SUM(Production_Data[Production_Qty])

Total Defects = SUM(Production_Data[Defects])

Good Units = [Total Production] - [Total Defects]

Defect Rate = DIVIDE([Total Defects], [Total Production], 0)
```

Format **Defect Rate** as a percentage.

## Dashboard

The Power BI dashboard is designed around three analytical layers:

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
- Machine/Product comparison

## Key Findings So Far

### Machine performance

M03 currently has the highest overall defect rate at approximately **1.84%**, compared with **1.59% for M01** and **1.52% for M02**.

M03 also has the highest defect rate for **4 of the 5 products** in the current dataset. This makes M03 the primary machine requiring further investigation.

However, the analysis does **not** establish that M03 causes the defects. The next step is to investigate operating conditions and other confounding factors.

### Quality parameters

- **Fat percentage:** no obvious positive relationship with defect rate.
- **Viscosity:** no obvious linear relationship with defect rate.
- **Fineness:** no obvious linear relationship with defect rate.
- **Humidity:** shows a possible relationship in parts of the dataset, but requires further statistical validation before drawing a causal conclusion.

### Important analytical principle

A variable being high for a product with a high defect rate does not prove that the variable causes defects. Product-level differences can create confounding relationships, so comparisons must be controlled and validated.

## Next Analysis Steps

- Validate the Power BI model against the complete source workbook.
- Investigate M03 operating conditions.
- Compare machine performance within each product.
- Examine operator and production-time effects.
- Calculate correlations and, where appropriate, statistical tests.
- Identify the strongest factors associated with defective production.
- Produce final management recommendations.

## Limitations

- The dataset is synthetic and intended for portfolio/learning purposes.
- The analysis currently identifies associations rather than proven causal relationships.
- Machine performance may be affected by product assignment and operating conditions.

## Tools

- Microsoft Excel
- Microsoft Power BI
- DAX
