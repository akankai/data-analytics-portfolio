# Executive Summary — Manufacturing Quality & Defect Analysis

## The business question

A chocolate manufacturing operation needs to know where defects are concentrated so it can direct quality-control attention and maintenance resources effectively.

## What the data shows

Across 460 batch-level production records (5 products, 3 machines, 5 operators):

| KPI | Value |
|---|---|
| Total Production | 532,362 units |
| Good Units | 523,673 units |
| Total Defects | 8,689 units |
| **Defect Rate** | **1.63%** |

**Machine ranking by defect rate:** M03 (1.84%) > M01 (1.59%) > M02 (1.52%). M03 has the highest defect rate for 4 of the 5 products.

**Product ranking:** Noir Extrême has the highest product-level defect rate; Noir Light has the lowest.

**Quality parameters:** No clear linear relationship between defect rate and fat percentage, viscosity, or fineness. Humidity shows a possible association in parts of the dataset but is not statistically validated.

## What this means

The clearest signal is that M03 consistently produces more defects than the other machines, across most products. This makes M03 the first priority for operational investigation — calibration, maintenance condition, and operating settings should be reviewed.

However, this dataset does not contain cost data, downtime data, process specification limits, or statistical test results. It can prioritize where to look, but it cannot:
- Quantify the financial cost of M03's additional defects
- Calculate OEE (no downtime or planned-vs-actual time data)
- Assess process capability (no specification limits)
- Prove a root cause

## Recommended next steps

1. Investigate M03 calibration, maintenance, and operating conditions.
2. Compare machines under equivalent product conditions.
3. Add cost-per-defect data to quantify the financial impact and prioritize against other operational demands.
4. Add downtime and planned-vs-actual production data to enable OEE calculation.
5. Perform correlation analysis with statistical coefficients for the quality parameters.

*Dataset: synthetic. Findings demonstrate an analytics workflow and should not be interpreted as findings about a real facility.*
