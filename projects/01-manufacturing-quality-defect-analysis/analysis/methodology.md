# Analysis Methodology

## 1. Business framing

The analysis starts with a manufacturing quality question: how can production data be used to understand defects and identify where quality-control attention should be focused?

## 2. Data validation

The source workbook was checked for:

- Missing values
- Duplicate rows
- Numeric-field consistency
- Production and defect totals
- Plausible categorical values

The synthetic dataset contains no missing values or duplicate rows.

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

The analysis does not assume that a high measurement causes defects. Instead, it compares groups and checks whether patterns remain visible after segmentation.

For example, M03 was identified as an investigation priority because it has the highest overall defect rate and the highest rate for most products. The analysis stops short of calling M03 a causal factor because the available data does not contain enough operational information or statistical testing to establish causality.

### 6. Interpretation boundaries

The final conclusions are intentionally limited to what the dataset supports. Exploratory relationships are presented as signals for investigation rather than proven root causes.

### 7. What this dataset does not cover

The dataset does not include:
- **Cost data:** no scrap cost, rework cost, or customer-return cost per defective unit. This means the analysis can rank machines by defect rate but cannot quantify the financial impact of the differences.
- **Time-loss data:** no downtime, planned-vs-actual production time, or available-time fields. OEE (Availability × Performance × Quality) cannot be calculated from this dataset alone.
- **Process specification limits:** no upper/lower specification limits for humidity, fat percentage, viscosity, or fineness. Process capability (Cp, Cpk) cannot be assessed.
- **Statistical validation:** no formal correlation testing or significance assessment for the quality parameters.

These gaps are intentional for this portfolio exercise, which focuses on descriptive and exploratory analysis. In a real production environment, each of these would be the next analytical layer.
