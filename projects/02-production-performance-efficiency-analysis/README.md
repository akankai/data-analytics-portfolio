# Project 02 — Production Performance & Efficiency Analysis

## Overview

A food manufacturing operation wants to understand how efficiently it converts planned production capacity and raw inputs into good output. The analysis focuses on production efficiency, yield, waste and machine utilization, then breaks performance down by month, machine, product and shift.

This project demonstrates an end-to-end **Excel → Power BI → DAX** workflow using a synthetic manufacturing dataset.

> **Dataset note:** The data is synthetic and was created specifically for this portfolio project. It does not represent confidential or real company production data.

## Business objectives

- Measure overall production performance.
- Compare actual production with planned production.
- Monitor yield and production waste.
- Measure machine utilization.
- Identify machines, products, shifts and periods with weaker performance.
- Turn dashboard observations into operational recommendations.

## Dataset

The dataset contains **500 batch-level production records** across 5 chocolate products, 4 machines, 3 shifts and 8 operators during 2025.

See [`data/data-dictionary.md`](data/data-dictionary.md) for field definitions.

## KPI definitions

| KPI | Definition |
|---|---|
| Total Production | Sum of actual production (kg) |
| Yield | Good Output ÷ Input Quantity |
| Production Efficiency | Actual Production ÷ Planned Production |
| Waste Rate | Waste ÷ Input Quantity |
| Machine Utilization | Operating Time ÷ Available Time |

## Overall results

| KPI | Result |
|---|---:|
| Total Production | **550,695 kg** |
| Planned Production | **586,622 kg** |
| Production Gap | **−35,927 kg** |
| Yield | **92.07%** |
| Production Efficiency | **93.88%** |
| Waste Rate | **3.06%** |
| Machine Utilization | **94.27%** |
| Total Downtime | **13,753.8 min** |
| Energy Consumption | **60,250.2 kWh** |

## Dashboard

![Production Performance Dashboard](assets/production-performance-dashboard.svg)

## Key findings

1. **M03 is the main operational priority:** lowest efficiency (**93.18%**) and utilization (**92.27%**) plus the highest downtime (**4,823.5 min**).
2. **M04 has the highest waste rate at 3.19%.** Its utilization remains relatively high, so waste should be investigated separately from machine usage.
3. **May is the weakest month for efficiency at 92.98%,** while December is strongest at 95.18%.
4. **Noir Extrême has the lowest product-level efficiency at 92.98%.**
5. **The morning shift has the highest waste rate at 3.21%.**
6. Overall actual production is **35,927 kg below plan**, corresponding to **93.88% production efficiency**.

## Interpretation and limitations

The dashboard identifies performance differences and investigation priorities; it does not establish root cause. The synthetic dataset does not contain maintenance events, downtime reason codes or process-setting variables needed to prove causality.

## Recommendations

1. Prioritize M03 for maintenance, calibration and operating-condition review.
2. Investigate M04 waste causes separately from utilization.
3. Compare May and December operating conditions.
4. Analyze product-machine combinations before making product-specific process changes.
5. Review morning-shift startup and setup practices.
6. In a real deployment, enrich the data with maintenance events, downtime reasons, process settings and raw-material context.

## Tools

- **Microsoft Excel** — source data and validation
- **Microsoft Power BI** — data modeling and dashboarding
- **DAX** — KPI measures

## Project documentation

- [Analysis findings](analysis/findings.md)
- [Methodology](analysis/methodology.md)
- [Data dictionary](data/data-dictionary.md)
- [Data notes](data/README.md)
- [Dashboard documentation](power-bi/dashboard.md)
- [DAX measures](power-bi/dax-measures.md)
- [Power BI project notes](power-bi/README.md)
- [Dashboard assets](assets/README.md)
