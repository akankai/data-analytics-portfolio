# Project 01 — Manufacturing Quality & Defect Analysis

## Overview

A chocolate manufacturing operation wants to understand production quality performance and identify where elevated defect rates require attention.

This project demonstrates an end-to-end **Excel → Power BI → DAX** analytics workflow using a synthetic production dataset.

> **Dataset note:** The dataset is synthetic and was created specifically for this portfolio project. It does not represent confidential or real company production data.

## Business objectives

- Measure overall production and quality performance.
- Track defect-rate evolution over time.
- Compare quality performance across products and machines.
- Explore relationships between quality parameters and defects.
- Prioritize areas for operational investigation.
- Communicate findings through an interactive Power BI dashboard.

## Dataset

The dataset contains **460 batch-level production records** covering five chocolate products, three machines and five operators.

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

Full definitions are available in [`data/data-dictionary.md`](data/data-dictionary.md).

### Data note

The source dataset is available as [`data/production_data.csv`](data/production_data.csv) (460 batch-level records). The Power BI dashboard was built from this source file. The dataset is synthetic and was created specifically for this portfolio project.

> **Dashboard screenshot note:** The preview image in the assets folder shows a filtered view (a subset of months) for visual clarity. The full dataset covers the entire production period and is available in the CSV file.

## KPIs

| KPI | Result |
|---|---:|
| **Total Production** | **532,362** |
| **Good Units** | **523,673** |
| **Total Defects** | **8,689** |
| **Defect Rate** | **1.63%** |

### KPI definitions

```DAX
Total Production = SUM(Production_Data[Production_Qty])

Total Defects = SUM(Production_Data[Defects])

Good Units = [Total Production] - [Total Defects]

Defect Rate =
DIVIDE([Total Defects], [Total Production], 0)
```

## Dashboard

The Power BI dashboard follows three analytical questions:

**What happened?** — KPI cards and monthly defect-rate trend.

**Where is it happening?** — Product and machine comparisons.

**What might explain it?** — Exploratory analysis of humidity, fat percentage, viscosity and fineness.

## Dashboard Preview

![Manufacturing Quality Dashboard](assets/manufacturing-quality-dashboard.png)

*Power BI dashboard — production and quality performance overview.*

## Key findings

### Machine performance

M03 has the highest overall defect rate at **1.84%**, compared with **1.59% for M01** and **1.52% for M02**. M03 also has the highest defect rate for four of the five products.

This identifies **M03 as the primary area for operational investigation**, but the analysis does not claim that M03 causes the defects.

### Product performance

Noir Extrême records the highest product-level defect rate in the dashboard, while Noir Light records the lowest.

### Quality parameters

The exploratory visuals show no obvious positive relationship between defect rate and fat percentage, viscosity or fineness. Humidity shows a possible relationship in parts of the dataset, but additional statistical validation would be required before treating it as a meaningful driver.

## Business recommendations

These recommendations follow the structure: **Data → Finding → Interpretation → Recommended Action → Illustrative Impact → Validation**.

### Recommendation 1: Investigate M03 as the primary quality improvement priority

**Data:** M03 has the highest defect rate (1.84%) and the highest defect count (3,226 defects, 37.1% of total) across 4 of 5 products. Pareto analysis confirms M03 + M01 account for 69.0% of all defects.

**Finding:** M03 is the largest single source of defects by both rate and volume. The machine-level ANOVA result (F(2,457) = 31.04, p < 0.001) confirms the defect rate difference is statistically distinguishable from M01 and M02.

**Interpretation:** The statistical significance reflects the large sample size, not a large practical difference — the M03 vs. M02 gap is approximately 0.33 percentage points. However, combined with the Pareto finding (37.1% of all defects), M03 is the machine where investigation would address the largest share of defects.

**Recommended action:** Begin with M03 calibration records, maintenance history, operating-condition review, and product/batch characteristics during M03's production runs. Compare M03's defect patterns by product against M01 and M02 under similar product conditions to control for product mix.

**Illustrative impact:** If the investigation identifies and resolves the cause of M03's elevated defect rate, and the defect rate were reduced to M02's level (1.52%), the dataset suggests approximately 1,576 fewer defective units (3,226 − 1,650 expected at M02's rate across M03's 152 batches). At an illustrative cost of 25 MAD per defective unit, this would correspond to approximately 39,400 MAD in avoided defect cost — but this is an illustrative scenario, not a projection. The actual impact depends on the cause, the fix, and the real cost per defect.

**Validation:** Re-measure defect rate on M03 after the investigation and corrective action. Compare the post-intervention defect rate against the baseline (1.84%) and against M01/M02. Track defect count and cost over a comparable production period.

### Recommendation 2: Investigate M01 as the secondary priority

**Data:** M01 has the second-highest defect count (2,772 defects, 31.9% of total) and a defect rate of 1.59%.

**Finding:** M01 contributes the second-largest share of defects. Pareto shows M03 + M01 = 69.0% of all defects.

**Interpretation:** After M03, M01 offers the next-largest improvement opportunity. The defect rate (1.59%) is closer to M02's (1.52%) than to M03's (1.84%), suggesting the issue may be less severe than M03's but still material in absolute terms.

**Recommended action:** Review M01 calibration, maintenance condition, and operating settings. If M03 investigation reveals a machine-specific issue (e.g., a worn component, a calibration drift), check whether M01 shows early signs of the same pattern.

**Illustrative impact:** Reducing M01's defect rate to M02's level would correspond to approximately 1,081 fewer defective units (2,772 − 1,691 expected at M02's rate across M01's 152 batches). At 25 MAD/unit, this is approximately 27,025 MAD in avoided cost — illustrative only.

**Validation:** Same as Recommendation 1 — re-measure after intervention.

### Recommendation 3: Do not prioritize by product or operator at this stage

**Data:** Pareto by product shows the top 3 products account for 65.8% of defects, spread across Noir Extrême (26.3%), Noir Gourmand (20.2%), and Noir Corsé (19.3%). Pareto by operator shows the top 2 operators account for 44.1% of defects, a relatively even distribution.

**Finding:** No single product or operator dominates the defect count. The product and operator distributions are too even to identify a clear priority.

**Interpretation:** Product-level and operator-level defect concentration is weak. This suggests that machine- or process-level factors are more likely to be the primary drivers than product-specific or operator-specific factors.

**Recommended action:** Do not lead with product-specific or operator-specific interventions. If machine-level investigation (Recommendations 1 and 2) identifies a specific pattern (e.g., a product-machine interaction), then revisit product and operator angles. Operator practices (setup, handling, quality checks) should be reviewed as part of the machine investigation, not as a separate priority.

**Impact:** This recommendation avoids wasted effort on low-priority angles. The dataset does not support product-specific or operator-specific conclusions, so the analysis correctly directs attention to the machine level.

**Validation:** Monitor whether defect patterns shift after machine-level investigation. If defects become more concentrated on specific products or operators after machine issues are addressed, those angles become more relevant.

### Recommendation 4: Use statistical results as signals, not conclusions

**Data:** Viscosity shows a statistically significant but very weak negative association with defect rate (Pearson r = −0.117, p = 0.012, R² = 1.4%). Humidity, fat percentage, and fineness show no significant association (all p > 0.05).

**Finding:** Only viscosity is statistically significant, and its effect size is too small to be operationally useful. No quality parameter shows a practically meaningful association with defect rate.

**Interpretation:** The quality parameters in this dataset do not explain defect rate in a practically useful way. The statistically significant viscosity result is an exploratory signal, not a finding that viscosity controls defect rate. It does not justify adjusting viscosity targets as a quality improvement action.

**Recommended action:** Do not use the quality parameters (humidity, fat, viscosity, fineness) as levers for defect reduction based on this analysis. If viscosity or another parameter is suspected to be relevant, design a controlled study — vary the parameter while holding machine, product, and operator constant, and measure the effect on defect rate. The current dataset cannot support that kind of causal investigation.

**Impact:** This prevents misdirected improvement efforts based on statistically significant but practically meaningless correlations. It is more important to avoid acting on a weak correlation than to act on it.

**Validation:** If a controlled study is conducted, report the effect size and practical significance, not just statistical significance.

### Recommendation 5: Build the cost model with real data before making investment decisions

**Data:** The illustrative cost model shows total defect cost ranging from 86,890 MAD (10 MAD/unit) to 434,450 MAD (50 MAD/unit), with M03 accounting for 37.1% across all scenarios.

**Finding:** The cost range is wide (5x between low and high assumptions), and the actual priority of investigating M03 depends on the real cost per defect.

**Interpretation:** The sensitivity analysis demonstrates why real cost data matters, but it cannot replace real cost data. The illustrative model is useful for structuring the analysis and showing the approach, but not for making investment decisions.

**Recommended action:** Obtain actual cost data (scrap cost per unit, rework labor cost, customer-return cost) from finance/operations. Replace the sensitivity parameter with the actual cost. Recalculate the cost of quality by machine and prioritize improvement investments based on actual cost.

**Impact:** This would convert the illustrative model into a decision-relevant cost-of-quality analysis. The current model shows the structure; the real model would show the actual financial priority.

**Validation:** Track actual cost of quality over time to measure the financial impact of quality improvements.


## Tools

- **Microsoft Excel** — source data and validation
- **Microsoft Power BI** — data modeling and dashboarding
- **DAX** — KPI measures

## Project documentation

- [Analysis findings](analysis/findings.md)
- [Analytical methodology](analysis/methodology.md)
- [Statistical analysis](analysis/statistical-analysis.md) — correlation testing, ANOVA, interpretation
- [Pareto analysis](analysis/pareto-analysis.md) — defects by machine, product, operator
- [Cost of quality model](analysis/cost-of-quality-model.md) — illustrative sensitivity analysis
- [What I learned](analysis/what-i-learned.md)
- [Power BI dashboard](power-bi/dashboard.md)
- [DAX measures](power-bi/dax-measures.md)
- [Data dictionary](data/data-dictionary.md)
